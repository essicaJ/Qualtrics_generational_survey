# function
gpt4_API <- ""
hey_chatGPT <- function(answer_my_question) {
  chat_GPT_answer <- 
    POST(url = "https://api.openai.com/v1/chat/completions",
         add_headers(Authorization = paste("Bearer", gpt4_API)),
         content_type_json(), encode = "json",
         body = list(#model = "gpt-3.5-turbo-0613",
           model = "gpt-4-1106-preview",
           temperature = 0,
           messages = list(list(role = "user", content = answer_my_question))))
  str_trim(httr::content(chat_GPT_answer)$choices[[1]]$message$content)
}

#hey_chatGPT("how is the whether")
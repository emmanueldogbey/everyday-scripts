library(rvest)

url = "https://threadreaderapp.com/thread/1638547682795896835.html"
response = read_html(url)

css_selector = ".content-tweet.allow-preview"

text =
  response |> 
  html_elements(css_selector) |> 
  html_text2()

writeLines(text, )
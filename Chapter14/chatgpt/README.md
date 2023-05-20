#### init app 

```yaml 
flutter create --org ttpho.github.io chatgpt
cd chatgpt
flutter clean 
flutter pub get      
flutter run
```

### http + flutter_bloc

```yaml
flutter pub add http
flutter pub add flutter_bloc
flutter pub add flutter_dotenv
```

### run on Chrome 

```yaml 
flutter run -d chrome 
```

### create model 

#### curl 

```yaml 
curl https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d '{
    "model": "gpt-3.5-turbo",
    "messages": [{"role": "user", "content": "Hello!"}]
  }'

```

#### header 

```yaml 
"Content-Type: application/json"
"Authorization: Bearer $OPENAI_API_KEY"
```

#### param POST 

```json
{
  "model": "gpt-3.5-turbo",
  "messages": [{"role": "user", "content": "Hello!"}]
}
```

#### response result 

```json
{
  "id": "chatcmpl-123",
  "object": "chat.completion",
  "created": 1677652288,
  "choices": [{
    "index": 0,
    "message": {
      "role": "assistant",
      "content": "\n\nHello there, how may I assist you today?"
    },
    "finish_reason": "stop"
  }],
  "usage": {
    "prompt_tokens": 9,
    "completion_tokens": 12,
    "total_tokens": 21
  }
}
```

#### response error 

```json
{
  "error": {
    "message": "Incorrect API key provided: ak-g1y7u***************************************rU86. You can find your API key at https://platform.openai.com/account/api-keys.",
    "type": "invalid_request_error",
    "param": null,
    "code": "invalid_api_key"
  }
}
```


### prompt 

The CSS code for a color like a blue sky at dusk:

background-color: #
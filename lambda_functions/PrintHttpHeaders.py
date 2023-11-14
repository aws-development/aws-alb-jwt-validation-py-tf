import json

def lambda_handler(event, context):
    response = {
        "statusCode": 200,
        "headers": {
            "Content-Type": "text/plain;"
        },
        "isBase64Encoded": False
    }

    if event['path'] == '/whatismyip':
        sourceip_list = event['headers']['x-forwarded-for'].split(',')
        if sourceip_list:
            sourceip = str(sourceip_list[0])
            response['body'] = sourceip
        else:
            response['body'] = '?.?.?.?'
        return response
    if event['path'] == "/token":
        oidc_token_header = event['headers']['x-amzn-oidc-data']
        print(oidc_token_header)
        oidc_token = oidc_token_header.split(' ')[0]
        print(oidc_token)

        response['body'] = oidc_token
        return response

    response['body'] = json.dumps(event, indent=2)

    return response

def wsgi_application(environ, start_response):
    status = '200 OK'
    headers = [
        ('Content-Type', 'text/plain')]
    body = list(map(lambda param: f'{param}={environ[param]}', environ))

    start_response(status, headers)
    print(body)

    return [body]

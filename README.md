##Installation
```
docker build -t pwdsphinx .
```

##Run server
```
docker run -it --rm --name=pwdsphinx-server -v $PWD:/app -p 2355:2355 -e MODE=server pwdsphinx
```

### Run client
```
docker run -it --rm --name=pwdsphinx-client -v $PWD:/app --entrypoint=bash pwdsphinx
```

## Client commands
Create password
```
echo 'my master password' | python client.py create username https://example.com ulsd 0
```
Get password
```
echo 'my master password' | python client.py get username https://example.com
```
Change password
```
echo 'my master password' | python client.py change username https://example.com
```
Commit password
```
echo 'my master password' | python client.py commit username https://example.com
```
Delete passwords
```
python client.py delete username https://example.com
```

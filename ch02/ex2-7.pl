# 문자열 연산자

"hello" . "world"       # "helloworld"와 같습니다.
"hello" . ' ' . "world" # 'hello world'와 같습니다.
'hello world' . "\n"    # "hello world\n"과 같습니다.


"fred" x 3          # "fredfredfred"입니다.
"barney" x (4+1)    # "barney" x 5 또는 "barneybarneybarneybarneybarney"
5 x 4               # 실제로 "5" x 4입니다. 결과적으로 "5555"와 같습니다.

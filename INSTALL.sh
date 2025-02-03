#!/bin/bash
def append_private_key(file_path):
    while True:
        # 提示用户输入私钥
        private_key = input("请输入私钥（或输入 'exit' 退出）: ")
        
        # 检查是否输入 'exit' 以退出循环
        if private_key.lower() == 'exit':
            break
        
        # 将私钥写入文件，并在每个私钥后添加换行符
        with open(file_path, 'a') as file:
            file.write(private_key + '\n')
        print("私钥已保存。")
        
        # 提示用户输入下一个私钥
        print("请输入下一个私钥。")

if __name__ == "__main__":
    # 文件路径
    file_path = "data/private_keys.txt"
    
    # 追加私钥到文件
    append_private_key(file_path)

if [ -d "./.venv" ]; then
    source ./.venv/bin/activate
else
    echo "creating env..."
    python3 -m venv .venv
    source ./.venv/bin/activate
fi

pip install -r requirements.txt

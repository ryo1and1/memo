memos = []

def make_memo
    puts "メモのタイトルを入力してください"
    title = gets.chomp
    puts "メモの本文を入力してください"
    content = gets.chomp
    memo = {"タイトル"=>title , "本文"=>content}
end

def show_memos(memos)
    puts "入力されたメモは"
    memos.each do |memo|
        puts memo["タイトル"] + ":" + memo["本文"]
    end
end

while true
    puts "[モード]を選択"
    puts "[add]メモを追加"
    puts "[show]メモ一覧"
    print "addかshowを選択してください→"
    mode = gets.chomp
    
    if mode == "add"
       memos.push(make_memo)
    elsif mode == "show"
        show_memos(memos)
    else
        puts "エラー"
    end
end
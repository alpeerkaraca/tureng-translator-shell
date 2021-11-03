require 'launchy'

puts "Please select a language.[ENTER will stop the program.]\t|Lütfen bir dil seçiniz.[Enter sonlandırır.]\n01=English\t\t\t\t\t\t|02=Turkish"
selection = gets.chomp  
loop do
    if selection == ("01" && "1")
        puts "Please type the word you want to search."
        words = gets.chomp
        
        puts ">>>>>>>>>>>>>>>>>Meaning of the word<<<<<<<<<<<<<<<".upcase
        system "wikit #{words}"
        Launchy.open("https://tureng.com/en/turkish-english/#{words}")
        
        
    elsif selection == ("02" && "2")
        puts "Lütfen aratmak istediğiniz sözcüğü yazın."
        words = gets.chomp
        
        print ">>>>>>>>>>>>>>Kelimenin anlamı<<<<<<<<<<<<<<<<<<".upcase
        system"wikit -l tr #{words}"        
        Launchy.open("https://tureng.com/en/turkish-english/#{words}")
        
    else
        return puts "[EN]You've made empty or wrong selection.Program is closing.[TR]Boş ya da yanlış seçim yaptınız. Program kapatılıyor."
        break
    end
end

        
    




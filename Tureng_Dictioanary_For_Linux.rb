require 'launchy'



puts "Please select a language.[ENTER will stop the program.]\t|Lütfen bir dil seçiniz.[Enter sonlandırır.]\n01=English\t\t\t\t\t\t|02=Turkish"
selection = gets.chomp  
loop do 
    if selection == ("01" && "1")
        puts "Please type the word you want to search.(Type !e ad close the program.)"
        words = gets.chomp

        if words == "!e"
            break
        end

        if words.empty?
            puts "You typed nothing.Program is closing."
            break
        end
        
        puts ">>>>>>>>>>>>>>>>>Meaning of the word<<<<<<<<<<<<<<<".upcase
        system "wikit #{words}"
        Launchy.open("https://tureng.com/en/turkish-english/#{words}")     


    elsif selection == ("02" && "2")
        puts "Lütfen aratmak istediğiniz sözcüğü yazın.(Programı kapatmak için !e yazın.)"
        words = gets.chomp
        
        if words == "!e"
            break
        end

        if (words.empty?)
            puts "Hiçbir şey yazmadınız.Program kapatılıyor."
            break
        end

        puts ">>>>>>>>>>>>>>>>>Kelimenin anlamı<<<<<<<<<<<<<<<".upcase
        system "wikit -l tr #{words}"
        Launchy.open("https://tureng.com/en/turkish-english/#{words}")


    else
        puts "[EN]You've made empty or wrong selection.Program is closing.[TR]Boş ya da yanlış seçim yaptınız. Program kapatılıyor."
        break
        
    end
end

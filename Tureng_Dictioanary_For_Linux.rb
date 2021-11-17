# frozen_string_literal: true

require 'launchy'

puts "Please select a language.[ENTER will stop the program.]\t|Lütfen bir dil seçiniz.[Enter sonlandırır.]"
puts "01=English\t\t\t\t\t\t|02=Turkish"
selection = gets.chomp
loop do
  if selection == ('01' && '1')
    puts 'Please type the word you want to search.(Type !e for close the program.)'
    words = gets.chomp

    break if words == ('!e' || '!E')

    puts 'You\'typed nothing program is closing' if words.empty?

    puts '>>>>>>>>>>>>>>>>>Meaning of the word<<<<<<<<<<<<<<<'.upcase
    Launchy.open("https://tureng.com/en/turkish-english/#{words}")
    system "wikit #{words}"

  elsif selection == ('02' && '2')
    puts 'Lütfen aratmak istediğiniz sözcüğü yazın.(Programı kapatmak için !e yazın.)'
    words = gets.chomp

    break if words == ('!e' || '!E')

    if words.empty?
      puts 'Hiçbir şey yazmadınız.Program kapatılıyor.'
      break
    end

    puts '>>>>>>>>>>>>>>>>>Kelimenin anlamı<<<<<<<<<<<<<<<'.upcase
    Launchy.open("https://tureng.com/en/turkish-english/#{words}")
    system "wikit -l tr #{words}"

  else
    puts '[EN]You\'ve made empty or wrong selection.Program is closing.'
    puts '[TR]Boş ya da yanlış seçim yaptınız. Program kapatılıyor.'
    break
  end
end

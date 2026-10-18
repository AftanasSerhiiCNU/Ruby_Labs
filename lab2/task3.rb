#Блок 3. Завдання 2

#Спосіб 1
File.open("report.txt", "w") do |file|
  file.puts "Звіт про виконання програми"
  file.puts "Дата: #{Time.now.getlocal("+03:00").iso8601}"
  file.puts "Статус: успішно"
end

puts "Звіт створено"

#Спосіб 2
file = nil

begin
  File.open("report.txt", "w") do |f|
    file = f

    f.puts "Звіт про виконання програми"
    f.puts "Дата: #{Time.now.getlocal("+03:00").iso8601}"

    raise "Тестова помилка"
  end

rescue RuntimeError => e
  puts "Помилка: #{e.message}"
end

puts "Файл закрито: #{file.closed?}"
puts ""

#Блок 3. Завдання 3

#Спосіб 1

require 'yaml'
require 'time'
require 'tempfile'

config = YAML.load_file("config.yml")

config["last_run_at"] = Time.now.getlocal("+03:00").iso8601

File.open("config.yml", "w") do |file|
  file.write(YAML.dump(config))
end

puts "Дата останнього запуску оновлена"

#Спосіб 2

path = "config.yml"

config = YAML.load_file(path)
config["last_run_at"] = Time.now.getlocal("+03:00").iso8601

temp = Tempfile.create(["config-", ".tmp"], File.dirname(File.expand_path(path)))

begin
  temp.write(YAML.dump(config))
  temp.flush
  temp.fsync
  temp.close

  File.rename(temp.path, path)

  puts "Конфігурацію успішно оновлено"
ensure
  temp.close unless temp.closed?
  File.delete(temp.path) if File.exist?(temp.path)
end
# coding UTF-8
require 'telegram/bot'

TOKEN = '1367898873:AAHq8GEg8vmqxB-a2kkP7Vjh3eaZhIs40e4'

ANSWERS = [
"Бесспорно",
"Предрешено",
"Никаких сомнений",
"Определенно да",
"Можешь быть уверен в этом",
"Мне кажется - да",
"Вероятнее всего",
"Хорошие перспективы",
"Знаки говорят - да",
"Да",
"Пока не ясно, попробуй снова",
"Спроси позже",
"Лучше не рассказывать",
"Сейчас нельзя предсказать",
"Сконцентрируйся и спроси опять",
"Даже не думай",
"Мой ответ - нет",
"По моим данным - нет",
"Перспективы не очень хорошие",
"Весьма сомнительно"
]

Telegram::Bot::Client.run(TOKEN) do |bot|
	bot.listen do |message|
		case message.text
		when '/start', '/start start'
			bot.api.send_message(
				chat_id: message.chat.id,
                text: "Здравствуй, #{message.from.first_name}"
				)
		else
			bot.api.send_message(
				chat_id: message.chat.id,
				text: ANSWERS.sample)
		end
	end
		end








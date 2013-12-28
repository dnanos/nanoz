class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.integer :year
      t.integer :pages
      t.float :weight
      t.date :created_at
      t.belongs_to :publisher, index: true

      t.timestamps
    end
    Book.create(:name => 'Цифровая фотография. Том 1',
                :price => 129200,
	        :description => 'Скотт Келби, автор супербестселлера Справочник по обработке цифровых фотографий в Photoshop, изменившего мир цифровой фотографии, в своей новой книге решил рассказать о самом главном: как получать снимки профессионального качества, используя приемы лучших мастеров современности (это проще, чем вы думаете). Вот как описывает идею книги сам Скотт Келби: "Представьте, что мы с вами отправились на съемку и вы спрашиваете: "Скотт, как сфотографировать цветок, чтобы он получился на фотографии четким, а фон - размытым?" В ответ я не стану читать вам длинную лекцию о теории фотосъемки, а просто подскажу: "Используй зум-объектив, выбери значение диафрагмы f/2,8, наведи фокус на цветок и фотографируй". Таков мой подход. Мы с вами фотографируем, я отвечаю на вопросы, даю советы и делюсь известными мне секретами, как будто общаюсь с другом - без сложных объяснений и технических терминов". Это не книга о теории фотографии, переполненная терминами и техническим жаргоном. Здесь в простой форме рассказано о том, какие кнопки нажимать, какие настройки использовать и когда лучше снимать. Изучив почти 200 профессиональных секретов, вы узнаете, как получать более эффектные, четкие и выразительные фотографии, поражающие воображение зрителя. На каждой странице описывается какой-то метод, который поможет улучшить качество ваших фотографий. Перелистывая книгу, вы будете узнавать о новом оборудовании, новых настройках, необходимых для съемки, или новых приемах, известных профессионалам.',
                :year => 2010,
                :pages => 224,
                :weight => 0.340,
                :publisher => Publisher.find(1))
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create({name: 'User1', email: 'user1@mail.com', password: '123456'})
Category.create({name: 'Minimalist', priority: 1})
Category.create({name: 'Chalet', priority: 2})
Category.create({name: 'Landscape', priority: 3})
Category.create({name: 'Nature', priority: 4})
Article.create({title: 'Silence is a treasure', body: 'Nam libero tempore, cum soluta nobis est eligendi 
                                                       optio cumque nihil impedit quo minus id quod maxime
                                                       placeat facere possimus, omnis voluptas assumenda est,
                                                       omnis dolor repellendus. Temporibus autem quibusdam et
                                                       aut officiis debitis aut rerum necessitatibus saepe eveniet
                                                       ut et voluptates repudiandae sint et molestiae non recusandae.
                                                       Itaque earum rerum hic tenetur a sapiente delectus, ut aut 
                                                       reiciendis voluptatibus maiores alias consequatur aut perferendis
                                                       doloribus asperiores repellat',image: 'defimg.jpg', author_id: 1})
Article.create({title: 'May your food be your medicine', body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                                                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                                Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                                                                nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
                                                                reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                                                pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa
                                                                qui officia deserunt mollit anim id est laborum.',
                                                                image: 'ediblegarden.jpg', author_id: 1})                                                 
Article.create({title: 'The peaceful life near the clouds', body: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                                                                   accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                                                                   quae ab illo inventore veritatis et quasi architecto beatae vitae
                                                                   dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
                                                                   aspernatur aut odit aut fugit, sed quia consequuntur magni dolores
                                                                   eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est,
                                                                   qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit,
                                                                   sed quia non numquam eius modi tempora incidunt ut labore et dolore
                                                                   magnam aliquam quaerat voluptatem', image: 'landscape.jpg', author_id: 1})                                                 
Article.create({title: 'Breathe clean air is priceless', body: 'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis
                                                                suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis
                                                                autem vel eum iure reprehenderit qui in ea voluptate velit esse quam
                                                                nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo
                                                                voluptas nulla pariatur?', image: 'logcabin.jpg', author_id: 1})                                                 
Article.create({title: 'Break the chains', body: 'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore,
                                                  cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod
                                                  maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor
                                                  repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum
                                                  necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae
                                                  non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis
                                                  voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat',
                                                  image: 'minimalist.jpg', author_id: 1})
Article.create({title: 'The peaceful life near the clouds', body: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                                                    accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                                                    quae ab illo inventore veritatis et quasi architecto beatae vitae
                                                    dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
                                                    aspernatur aut odit aut fugit, sed quia consequuntur magni dolores
                                                    eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est,
                                                    qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit,
                                                    sed quia non numquam eius modi tempora incidunt ut labore et dolore
                                                    magnam aliquam quaerat voluptatem', image: 'landscape.jpg', author_id: 1})                                                                                                   
Article.create({title: 'Mother nature\'s embrace', body: 'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore,
                                                      cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod
                                                      maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor
                                                      repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum
                                                      necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae
                                                      non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis
                                                      voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat',
                                                      image: 'pool.jpg', author_id: 1})
                                                    Tag.create({article_id: 1, category_id: 4})
Tag.create({article_id: 2, category_id: 4})
Tag.create({article_id: 3, category_id: 4})
Tag.create({article_id: 4, category_id: 4})
Tag.create({article_id: 5, category_id: 3})
Tag.create({article_id: 6, category_id: 2})
Tag.create({article_id: 7, category_id: 1})
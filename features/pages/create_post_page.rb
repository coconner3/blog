require 'page-object'

class CreateaPost
    include PageObject

    text_field(:post_title, id: 'title')
    text_field(:post_author, id: 'author')
    text_area(:post_body, id:'body')

    button(:create_a_post, id: 'createapost')
    link(:home_link, id: 'home')

    def write_new_post
      self.post_title = "test post TITLE"
      self.post_author = "test post AUTHOR"
      self.post_body = "test post BODY"
      self.create_post
    end

    def duplicate_title_test
        test_passed = false
        self.post_title = "test post TITLE"
        self.create_post
        if (self.post_title == "")
                 if (self.post_author == "")
                            if (self.post_body == "")
                                   test_passed = true
                                     end
                          end
               end
        return test_passed
      end

  end
# 1. Give one difference between Modules and Classes.

  # modules will never be instantiated, can be used in the way of a mix in

  # 2. Defining Modules

    # modules are similar to classes in function.  Used to help give more verbose
    # programs those polishing touches -- or to pull something specific out and use it elsewhere.
    # the example with the sport balls are great -- one thing that could be used in those terms,
    # would be make a ball class, have methods for each ball as to define which sport you are playing,
    # then you could have an aerodynamic module or take an an aerodynamic method inside the module and mix it into the ball class.

    # module Doughy
    #   def has_carbs?
    #     true
    #   end
    # end
    #
    # class Pizza
    #   include has_carbs?
    #   def tasty?
    #     true
    #   end
    # end

    #3. What are two benefits modules provide us in Ruby? Elaborate on each.

      # Name Space and Mixins -     Name Space wraps the class in a module and uses the entirety of the modules methods to manipulate the class.     Mixins - take our include method, as well as others i need to learn, and injects said method into a class.  When you need single details from a module.

    #4. What values in Ruby evaluate as “falsy”?

      #nil and false

      #5. Give 3 examples of “truthy” values in Ruby.

        # anything in a string  " ", true, 0

        # 6. List 3 HTTP Verbs

          # GET, POST, PUT, PATCH, DELETE, COPY

#           7. HTTP Parsing: given the following HTTP Request, identify the following:
            #
            # HTTP Verb      --   is POST
            # Request Path --     /students?name=horace
            # Query Parameters   --   horace


            # POST /students?name=horace HTTP/1.1
            # Host: 127.0.0.1:9292
            # Connection: keep-alive
            # Cache-Control: max-age=0
            # Accept: text/html
            # Upgrade-Insecure-Requests: 1
            # User-Agent: Mozilla/5.0
            # Accept-Encoding: gzip, deflate, sdch
            # Accept-Language: en-US,en;q=0.8

            # What is the full request URL?

              # 127.0.0.1:9292/students?name=horace


            #8. Git and Branches: give a git command to accomplish each of the following:

            # Switch to an existing branch iteration-1
            # Create a new branch iteration-2
            # Push a branch iteration-2 to a remote origin
            # Merge a branch iteration-1 into a branch master (assume you are not on master to begin with)

            #https://github.com/Cdale3/diagnostic4

            #9. Load Paths and Requires

            # Given a project with the following directory structure, give 2 ways that we could require file_one from file_two.
            #
            # . <you are here>
            # ├── lib
            # │  │── file_one.rb
            # │  └── file_two.rb

              # require_relative 'file_one'
              # require './file_one'

              # 10. Refactoring: given the following snippet of code, show 2 refactorings you might make to improve the design of this code.

              class Encryptor
                def date_offset
                  date = Time.now.strftime("%d%m%y").to_i
                  # date_squared = date ** 2
                  last_four_digits = (date ** 2).to_s[-4..-1]
                  [last_four_digits[-4..-1].to_i]
                  # last_four_digits[-3].to_i,
                  # last_four_digits[-2].to_i,
                  # last_four_digits[-1].to_i]
                end
              end

              p Encryptor.new.date_offset

require "converter/version"

class Error < StandardError; end
  # Your code goes here...

class Generator
 
    def create_html
      # Looks crappy, I know=)
      # This code cuts a JS and HTML syntax.
      # The code right under this line do string. 
      # If we just left .gsub, it wouldn't work when our var has nill.
      # if you have an idea to make it looks better - get in touch with me on denuk3000(skype)
      $title = $title.to_s
      if $title.include?("<") or $title.include?(">")
        $title.gsub!(/[<>]/,"")
      end
      $body = $body.to_s
      if $body.include?("<") or $body.include?(">")
        $body.gsub!(/[<>]/,"")
      end
      $h1 = $h1.to_s
      if $h1.include?("<") or $h1.include?(">")
        $h1.gsub!(/[<>]/,"")
      end
      $h2 = $h2.to_s
      if $h2.include?("<") or $h2.include?(">")
        $h2.gsub!(/[<>]/,"")
      end
      $h3 = $h3.to_s
      if $h3.include?("<") or $h3.include?(">")
        $h3.gsub!(/[<>]/,"")
      end
      $h4 = $h4.to_s
      if $h4.include?("<") or $h4.include?(">")
        $h4.gsub!(/[<>]/,"")
      end
      $list_item_1 = $list_item_1.to_s
      if $list_item_1.include?("<") or $list_item_1.include?(">")
        $list_item_1.gsub!(/[<>]/,"")
      end
      $list_item_2 = $list_item_2.to_s
      if $list_item_2.include?("<") or $list_item_2.include?(">")
        $list_item_2.gsub!(/[<>]/,"")
      end
      $list_item_3 = $list_item_3.to_s
      if $list_item_3.include?("<") or $list_item_3.include?(">")
        $list_item_3.gsub!(/[<>]/,"")
      end
      $list_item_4 = $list_item_4.to_s
      if $list_item_4.include?("<") or $list_item_4.include?(">")
        $list_item_4.gsub!(/[<>]/,"")
      end
      $list_item_5 = $list_item_5.to_s
      if $list_item_5.include?("<") or $list_item_5.include?(">")
        $list_item_5.gsub!(/[<>]/,"")
      end
      $list_item_6 = $list_item_6.to_s
      if $list_item_6.include?("<") or $list_item_6.include?(">")
        $list_item_6.gsub!(/[<>]/,"")
      end
      $list_item_7 = $list_item_7.to_s
      if $list_item_7.include?("<") or $list_item_7.include?(">")
        $list_item_7.gsub!(/[<>]/,"")
      end
      $list_item_8 = $list_item_8.to_s
      if $list_item_8.include?("<") or $list_item_8.include?(">")
        $list_item_8.gsub!(/[<>]/,"")
      end
      $p1 = $p1.to_s
      if $p1.include?("<") or $p1.include?(">")
        $p1.gsub!(/[<>]/,"")
      end
      $p2 = $p2.to_s
      if $p2.include?("<") or $p2.include?(">")
        $p2.gsub!(/[<>]/,"")
      end
      $p3 = $p3.to_s
      if $p3.include?("<") or $p3.include?(">")
        $p3.gsub!(/[<>]/,"")
      end
      $footer = $footer.to_s
      if $footer.include?("<") or $footer.include?(">")
        $footer.gsub!(/[<>]/,"")
      end

      File.open("index.html", "w+"){ |f| f.write '<!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <title>' + $title.to_s + '</title>
          <link rel="stylesheet" href="style.css">
        </head>
        <body>  ' + $body.to_s + '
          <header>
              <h1>' + $h1.to_s + '</h1>
          </header>
          <div class="container">
            <h2>' + $h2.to_s + '</h2>
            <div>
              <ul>
                <li>' +  $list_item_1.to_s + '</li>
                <li>' +  $list_item_2.to_s + '</li>
                <li>' +  $list_item_3.to_s + '</li>
                <li>' +  $list_item_4.to_s + '</li>
                <li>' +  $list_item_5.to_s + '</li>
                <li>' +  $list_item_6.to_s + '</li>
                <li>' +  $list_item_7.to_s + '</li>
                <li>' +  $list_item_8.to_s + '</li>
              </ul>
            </div>
          </div>
          <div class="container">
            <h3>' + $h3.to_s + '</h3>
            <div>
              <p>
                              ' + $p1.to_s + '
              </p>
              <p>
                            ' + $p2.to_s + '
              </p>
              <p>
                            ' + $p3.to_s + '
              </p>
            </div>
          </div>
          <div class="container"> 
            <h4>' + $h4.to_s + '</h4>
          </div>      
          <footer>
           ' + $footer.to_s + '
          </footer>
        </body>
        </html>' }
    end

    def create_css
      File.open("style.css", "w+"){ |f| f.write $content }
    end

end 
def getid(youtube_url)

    # regex = /(?:youtube(?:-nocookie)?\.com\/(?:[^\/\n\s]+\/\S+\/|(?:v|e(?:mbed)?)\/|\S*?[?&]v=)|youtu\.be\/|vimeo\.com\/)([a-zA-Z0-9_-]{8,11})/
    regex =/(?:http:|https:)*?\/\/(?:www\.|)(?:youtube\.com|m\.youtube\.com|youtu\.|youtube-nocookie\.com).*(?:v=|v%3D|v\/|(?:a|p)\/(?:a|u)\/\d.*\/|watch\?|vi(?:=|\/)|\/embed\/|oembed\?|be\/|e\/)([^&?%#\/\n]*)/


    match = regex.match(youtube_url)

    if match

      return match[1]

    else

      return youtube_url

    end

  end


  puts(getid('http://www.youtube.com/watch?v=-wtIMTCHWuI'))
  
  puts(getid('http://www.youtube.com/v/-wtIMTCHWuI?version=3&autohide=1'))
  
  puts(getid('http://youtu.be/-wtIMTCHWuI'))
  
  puts(getid('http://www.youtube.com/oembed?url=http%3A//www.youtube.com/watch?v%3D-wtIMTCHWuI&format=json'))
  
  puts(getid('http://www.youtube.com/attribution_link?a=JdfC0C9V6ZI&u=%2Fwatch%3Fv%3DEhxJLojIE_o%26feature%3Dshare'))
  
  puts(getid('https://www.youtube.com/attribution_link?a=8g8kPrPIi-ecwIsS&u=/watch%3Fv%3DyZv2daTWRZU%26feature%3Dem-uploademail'))
  
  puts(getid('https://www.youtube.com/watch?v=yZv2daTWRZU&feature=em-uploademail'))
  
  puts(getid('https://www.youtube.com/watch?v=0zM3nApSvMg&feature=feedrec_grec_index'))
  
  puts(getid('https://www.youtube.com/user/IngridMichaelsonVEVO#p/a/u/1/QdK8U-VIH_o'))
  
  puts(getid('https://www.youtube.com/v/0zM3nApSvMg?fs=1&amp;hl=en_US&amp;rel=0'))
  
  puts(getid('https://www.youtube.com/watch?v=0zM3nApSvMg#t=0m10s'))
  
  puts(getid('https://www.youtube.com/embed/0zM3nApSvMg?rel=0'))
  
  puts(getid('//www.youtube-nocookie.com/embed/up_lNV-yoK4?rel=0'))
  
  puts(getid('https://www.youtube-nocookie.com/embed/up_lNV-yoK4?rel=0'))
  
  puts(getid('http://www.youtube.com/user/Scobleizer#p/u/1/1p3vcRhsYGo'))
  
  puts(getid('http://www.youtube.com/watch?v=cKZDdG9FTKY&feature=channel'))
  
  puts(getid('http://www.youtube.com/watch?v=yZ-K7nCVnBI&playnext_from=TL&videos=osPknwzXEas&feature=sub'))
  
  puts(getid('http://www.youtube.com/ytscreeningroom?v=NRHVzbJVx8I'))
  
  puts(getid('http://www.youtube.com/watch?v=6dwqZw0j_jY&feature=youtu.be'))
  
  puts(getid('http://www.youtube.com/user/Scobleizer#p/u/1/1p3vcRhsYGo?rel=0'))
  
  puts(getid('http://www.youtube.com/embed/nas1rJpm7wY?rel=0'))
  
  puts(getid('https://www.youtube.com/watch?v=peFZbP64dsU'))
  
  puts(getid('http://youtube.com/v/dQw4w9WgXcQ?feature=youtube_gdata_player'))
  
  puts(getid('http://youtube.com/?v=dQw4w9WgXcQ&feature=youtube_gdata_player'))
  
  puts(getid('http://www.youtube.com/watch?v=dQw4w9WgXcQ&feature=youtube_gdata_player'))
  
  puts(getid('http://youtube.com/?vi=dQw4w9WgXcQ&feature=youtube_gdata_player'))
  
  puts(getid('http://youtube.com/watch?v=dQw4w9WgXcQ&feature=youtube_gdata_player'))
  
  puts(getid('http://youtube.com/watch?vi=dQw4w9WgXcQ&feature=youtube_gdata_player'))
  
  puts(getid('http://youtube.com/vi/dQw4w9WgXcQ?feature=youtube_gdata_player'))
  
  puts(getid('http://youtu.be/dQw4w9WgXcQ?feature=youtube_gdata_player'))
  
  puts(getid('http://www.youtube.com/user/SilkRoadTheatre#p/a/u/2/6dwqZw0j_jY'))
  
  puts(getid('https://www.youtube.com/watch?v=ishbTyLs6ps&list=PLGup6kBfcU7Le5laEaCLgTKtlDcxMqGxZ&index=106&shuffle=2655'))
  
  puts(getid('http://www.youtube.com/v/0zM3nApSvMg?fs=1&hl=en_US&rel=0'))
  
  puts(getid('http://www.youtube.com/watch?v=0zM3nApSvMg&feature=feedrec_grec_index'))
  
  puts(getid('http://www.youtube.com/watch?v=0zM3nApSvMg#t=0m10s'))
  
  puts(getid('http://www.youtube.com/embed/dQw4w9WgXcQ'))
  
  puts(getid('http://www.youtube.com/v/dQw4w9WgXcQ'))
  
  puts(getid('http://www.youtube.com/e/dQw4w9WgXcQ'))
  
  puts(getid('http://www.youtube.com/?v=dQw4w9WgXcQ'))
  
  puts(getid('http://www.youtube.com/watch?feature=player_embedded&v=dQw4w9WgXcQ'))
  
  puts(getid('http://www.youtube.com/?feature=player_embedded&v=dQw4w9WgXcQ'))
  
  puts(getid('http://www.youtube.com/user/IngridMichaelsonVEVO#p/u/11/KdwsulMb8EQ'))
  
  puts(getid('http://www.youtube-nocookie.com/v/6L3ZvIMwZFM?version=3&hl=en_US&rel=0'))
  
  puts(getid('http://www.youtube.com/user/dreamtheater#p/u/1/oTJRivZTMLs'))
  
  puts(getid('https://youtu.be/oTJRivZTMLs?list=PLToa5JuFMsXTNkrLJbRlB--76IAOjRM9b'))
  
  puts(getid('http://www.youtube.com/watch?v=oTJRivZTMLs&feature=youtu.be'))
  
  puts(getid('http://youtu.be/oTJRivZTMLs&feature=channel'))
  
  puts(getid('http://www.youtube.com/ytscreeningroom?v=oTJRivZTMLs'))
  
  puts(getid('http://www.youtube.com/embed/oTJRivZTMLs?rel=0'))
  
  puts(getid('http://youtube.com/vi/oTJRivZTMLs&feature=channel'))
  
  puts(getid('http://youtube.com/?v=oTJRivZTMLs&feature=channel'))
  
  puts(getid('http://youtube.com/?feature=channel&v=oTJRivZTMLs'))
  
  puts(getid('http://youtube.com/?vi=oTJRivZTMLs&feature=channel'))
  
  puts(getid('http://youtube.com/watch?v=oTJRivZTMLs&feature=channel'))
  
  puts(getid('http://youtube.com/watch?vi=oTJRivZTMLs&feature=channel'))
  
  puts(getid('https://m.youtube.com/watch?v=m_kbvp0_8tc'))
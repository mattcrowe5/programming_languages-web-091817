def reformat_languages(languages)
  hash ={}
  languages.map do |style, data|
    data.map do |language, attributes|
      attributes.map do |type, descript|
        if !hash.has_key?(language)
        hash[language] = {type: descript}
        end
        if hash[language].has_key?(:style)
          hash[language][:style].push(style)
        elsif !hash[language].has_key?(:style)
          hash[language][:style] = [style]
        end
    end
  end
end
  hash
end

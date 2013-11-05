module Jekyll
  class Nohassle < Generator
    safe false
    @@folder = '_nohassle'

    def generate(site)
      @files = Dir["#{@@folder}/*"]
      @files.each_with_index { |f,i| 
        old_text = File.read(f)
        n = f.dup
        n[0..@@folder.length] = ""
        n = n.slice(0..-4)
        File.open("temp.md", 'w') do |file|

          file.write("---\nlayout: post\ntitle: #{n}\n---\n")
          file.write("##{n}\n")
          file.write(old_text)
        end

        File.delete(f)

        File.rename('temp.md', f)

        # Renaming files with appropriate date
        now = Date.today.strftime("%Y-%m-%d")
        File.rename(f, "_posts/#{now}-#{File.basename(f.gsub(/\s+/, '-'))}") 
      }
    end
  end
end

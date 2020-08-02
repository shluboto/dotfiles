require "bundler"
require "fileutils"

def base_path
  Bundler.root.to_s
end

def full_paths(*paths)
  paths.map { |path| full_path(path) }
end

def full_path(path)
  File.expand_path(path, base_path)
end

def in_each_directory(*paths, &block)
  paths.each do |path|
    in_directory(path, &block)
  end
end

def in_directory(path)
  FileUtils.cd(path, &block)
end

def glob(path, files: true, dirs: false)
  source_path = File.join(base_path, path)
  filenames   = Dir[source_path]

  filenames.select do |filename|
    if files
      !File.directory?(filename)
    elsif dirs
      File.directory?(filename)
    end
  end
end

def replace_in_file(filename:, match:, with: "")
  old_text = File.read(filename)
  new_text = text.gsub(match, with)

  File.write(old_text, new_text)
end

alias remove_in_file replace_in_file

IO.puts(Path.join("foo", "bar"))

# Writing to a File
File.write("newfile", "Hello")

#Open the file in read, write and utf8 modes. 
#Write to this "io_device" using standard IO functions
file = File.open!("newfile_2", [:read, :utf8, :write])
IO.puts(file, "Random text")

{:ok, file} = File.read("newfile", [:write]) 
# Pattern matching to store returned stream
IO.binwrite(file, "This will be written to the file")

# Reading from a File
IO.puts(File.read("newfile"))

# Closing an Open File
File.close(file)
defmodule HowFilesWork do

  @folder_tmps Path.absname("tmp")

  def create_multiple_files(amount) when is_integer(amount) do
    file_name    = Integer.to_string(amount)
    file_content = Integer.to_string(Enum.random(1..1_000))

    cond do
      amount == 0 -> 0
      true ->
        File.write("#{@folder_tmps}/#{file_name}.txt", file_content)

        create_multiple_files(amount - 1)
    end
  end

  def read_file(file_name) do
    IO.puts File.read! "#{@folder_tmps}/#{file_name}"  
  end

  # def rename_files do
  #   dir Path.absname("../../learn")

  #   Enum.each(File.ls!(dir), fn file ->
  #       IO.puts fname = "#{dir}/#{file}"
  #       if File.dir?(fname), do: recursive(fname)
  #     end)
  #   end    
  # end


  def rename_files(dir \\ Path.absname("../../learn")) do
    Enum.each(File.ls!(dir), fn file ->
      new_name = String.replace(file, ~r/[0-9-]/, "")
      File.rename("#{dir}/#{file}", "#{dir}/#{new_name}")
    end)
  end

end

# HowFilesWork.create_multiple_files(2)
# HowFilesWork.read_file "1.txt"
HowFilesWork.rename_files
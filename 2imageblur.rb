class Image

  def initialize(array)
    @array = array
    @row_length = array.length
    @col_length = array[0].length

  end 

  def output_image
    @array.each do |row|
      row.each do |col|
        print col, ' '
      end 
      puts  
    end 
  end 

  def blur!
    blur = []
    @array.each_with_index do |rows, row|
      rows.each_with_index do |num, col|
        blur <<[row, col] if num ==1
     end   
  end 
  blur.each do |row, col|
     #row, col = index
     @array[row-1][col]=1 if row-1 >= 0
     @array[row+1][col]=1 if row+1 
     @array[row][col-1]=1 if col-1 >= 0
     @array[row][col+1]=1 if col+1 
   end
 end 

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image
image.blur!
puts
image.output_image
end
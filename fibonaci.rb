MAX = 50
@suite = Array.new(MAX, :unknown)

def fibonaci(n) # Returns the nth Fibonaci number
  if n <= 1
    return n
  elsif n >= MAX
    return "Number can't be bigger than #{MAX}"
  elsif @suite[n] != :unknown
    return @suite[n]
  else
    @suite[n] = fibonaci(n - 1) + fibonaci(n - 2)
    return @suite[n]
  end
end

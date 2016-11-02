def begins_with_r(array)
  array.all? { |ele| ele[0] == "r"}
end


def contain_a(array)
  array.select { |word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word[0..1] == "wa" }
end

def remove_non_strings(array)
  array.delete_if { |ele| ele != ele.to_s}
end

def count_elements(array)
  counted = Hash.new(0)
  answer = Hash.new(0)
  result = []

  array.each { |ele| counted[ele[:name]] += 1}
  counted.each do |k, v|
    answer = {:name => k, :count => v}
    result << answer
  end

  result
end


def merge_data(keys, data)
  merged = []
  result = Hash.new(0)

  keys.each do |name|
    data.each do |key|
      key.each do |key, value|
        if name[:first_name] == key
          result = name.merge(value)
          merged.push(result)
        end
      end
    end
   end
  merged
end

def find_cool(cool)
  cool.each do |hash|
    hash.each do |key, value|
      if hash[key] == "cool"
        return [hash]
      end
    end
  end
end

def organize_schools(schools)
  by_location = Hash.new { |h, k| h[k]=[]}
  local = ""
  schools.each do |school|
    local = school[1][:location]
    by_location[local] << school[0]
  end
  by_location
end

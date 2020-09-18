# staggered_case_pt2.rb - Staggered Caps (Part 2)

# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the return
# value; they just don't count when toggling the desired case.

def staggered_case(str)
  result = ''
  toggle = true
  str.chars.each do |char|
    if char.match?(/[^a-zA-Z]/)
      result << char
      next
    elsif toggle == true
      result << char.upcase
    else
      result << char.downcase
    end
    toggle = !toggle
  end
  result   
end

# Examples:
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

=begin

<-PEDAC->
problem:
  - return new string with alternate alphabetical chars upcased/downcased
  - ignore non-alpha characters and white space in terms of index counting,
    but retain them in the string

input: string
output: string
data structure: string, array 

algorithm:
  - initialize (result) to ''
  - initialize (toggle) to true
  - iterate through string (chars)
    - if char is ^a-zA-Z
        - push to result
        - next
    - elsif toggle is true
      - upcase char and push to result
    - else 
      - downcase char and push to result
    - toggle = !toggle
  - return result
=end

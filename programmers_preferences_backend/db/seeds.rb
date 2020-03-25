programmers = [
  {
    name: 'Felix',
    age: 2,
    enjoys: 'loves computers.'
  },
  {
    name: 'Homer',
    age: 12,
    enjoys: 'loves laptops.'
  }
]

programmers.each do |attributes|
  Programmer.create attributes
end
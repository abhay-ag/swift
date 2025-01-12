/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer
{
    var ram:Int
    var yearManuFactured:Int
    init?(ram:Int,yearManufactured:Int)
    {
        if ram>0 && yearManufactured>1970
        {
            self.ram = ram
            self.yearManuFactured = yearManufactured
        }
        else
        {
            return nil
        }
    }
}


//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
let comp1 = Computer(ram: 21, yearManufactured: 2000)
let comp2 = Computer(ram: 0, yearManufactured: 2000)

if let comp1
{
    print("\(comp1.ram) , \(comp1.yearManuFactured)")
}
else
{
    print("nil")
}
if let comp2
{
    print("\(comp2.ram) , \(comp2.yearManuFactured)")
}
else
{
    print("nil")
}
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */

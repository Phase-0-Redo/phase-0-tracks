=begin
design and build a nested data structure 
to represent a real-world construct.
something that will use a mix of hashes and arrays.
=end
require 'pp'
starbucks = {
  college_and_plaza: {

    partners_working: ["Chelsea", "Juanita", "Jordan", "Annamarie", "Joel", "Amber", "Jessica", "Ehrin"],
    currently_brewing: {
      medium: "Pike", 
      blonde: "Veranda", 
      bold: "Verona", 
      decaf: "Decaf Sumatra"
    },

    drive_thru_queue:{
      car_1: {
        name: "Erin",
        order: {
          drink: "Iced Caramel Macchiatto",
          food: "Chocolate croissant"
        },
      },
      car_2: {
        name: "Danielle",
        order: {

          drink: "Venti Pike",
          food: nil
        },
      },
    },
    
    lobby_queue: {
      customer_1: {
        name: "Tabitha",
        order: {
          drink: "Short Verona",
          food: "Sausage Sandwich"
        },
      },
    },

  },

  mission_and_el_camino: {
    partners_working: ["Kate", "Renee", "Michelle", "John", "Priscilla", "Sam", "Maille"],
    currently_brewing: {
      medium: "Breakfast Blend", 
      blonde: "Willow", 
      bold: "Sumatra", 
      decaf: "Decaf Pike"
    },

    drive_thru_queue:{

      car_1: {
        name: "Peter",
        order: {
          drink: "Grande Iced Coffee",
          food: "Chocolate croissant"
        },
      },

      car_2: {
        name: "Nancy",
        order: {
          drink: ["Venti Pike", "Tall Cold Brew"],
          food: ["Pumpkin Bread", "Blueberry Muffin"]
        }
      }
    },
    
    lobby_queue: {
      customer_1: {
        name: "John",
        order: {
          drink: "Grande Americano",
          food: ["Coffee Cake", "Protein Bistro Box"]
        },
      },

      customer_2: {
        name: "Marnie",
        order: {
          drink: nil,
          food: ["Spicy Chorizo", "Bacon Gouda", "Apple fritter"],
        },
      
      },
    },
  },
}


#p starbucks[:mission_and_el_camino][:currently_brewing][:bold]



pp starbucks

# how many stores in starbucks
p starbucks.length

# Who is working at the college and plaza store? Who is the 3rd partner on?
p starbucks[:college_and_plaza][:partners_working]
p starbucks[:college_and_plaza][:partners_working][2]

# What bold coffee is brewing at mission and el camino?
p starbucks[:mission_and_el_camino][:currently_brewing][:bold]

# The name of the first customer in the lobby at college and plaza?
p starbucks[:college_and_plaza][:lobby_queue][:customer_1][:name]

# The second food item from marnie's order at mission and el camino
p starbucks[:mission_and_el_camino][:lobby_queue][:customer_2
][:order][:food][1]

#the order for the second card in drive thru at mission and el camino
p starbucks[:college_and_plaza][:drive_thru_queue][:car_2][:order]


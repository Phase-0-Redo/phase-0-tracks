=begin
design and build a nested data structure 
to represent a real-world construct.
something that will use a mix of hashes and arrays.
=end

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
        order: {
          drink: "Iced Caramel Macchiatto",
          food: "Chocolate croissant"
        }
      },
      car_2: {
        order: {
          drink: "Venti Pike",
          food: nil
        }
      }
    }
    

  },

  mission_and_el_camino: {
    partners_working: ["Kate", "Renee", "Michelle", "John", "Priscilla", "Sam", "Maille"],
    currently_brewing: {
      medium: "Breakfast Blend", 
      blonde: "Willow", 
      bold: "Sumatra", 
      decaf: "Decaf Pike"
    }
  }
}

p starbucks[:mission_and_el_camino][:currently_brewing][:bold]
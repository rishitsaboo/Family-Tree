CREATE  (grandpa:Person:grandparent{name:"Phoolchand Saboo",gender:"M",born:1940}),
        (grandma:Person:grandparent{name:"Savtri devi Saboo",gender:"F",born:1945})
CREATE (grandpa)-[:MARRIED_TO {since: 1960}]->(grandma),
       (grandma)-[:MARRIED_TO {since: 1960}]->(grandpa)
WITH grandpa, grandma
CREATE 
  // Create NATWAR (child of grandparents)
  (child4:Person:parent{name: "Natwar Saboo", gender: "M",born :1967}),
  (grandpa)-[:PARENT_OF]->(child4),
  (grandma)-[:PARENT_OF]->(child4),

  // Create Laura (Michael's spouse)
  (spouse4:Person:parent:spouse {name: "Deepa Saboo", gender: "F",born:1974}),
 
  (child4)-[:MARRIED_TO]->(spouse4),
  (spouse4)-[:MARRIED_TO]->(child4),

  // Create their children (grandchildren)
  (gc4_1:person:child {name: "Manish Saboo", gender: "M",born:1994}),
  (spouse_gc4_1:person:spouse{name:"Prachi Saboo", gender:"F",born:1997}),
  (gc4_2:person:child {name: "Nidhi Saboo", gender: "F",born:1997}),
  
  (spouse_gc4_1)-[:MARRIED_TO]->(gc4_1),
  (gc4_1)-[:MARRIED_TO]->(spouse_gc4_1),
  
  (child4)-[:PARENT_OF]->(gc4_1),
  (spouse4)-[:PARENT_OF]->(gc4_1),
  (child4)-[:PARENT_OF]->(gc4_2),
  (spouse4)-[:PARENT_OF]->(gc4_2)
  
WITH grandpa, grandma
CREATE 
  // Create MANOJ (child of grandparents)
  (child1:Person:parent {name: "Manoj saboo", gender: "M",born :1969}),
  (grandpa)-[:PARENT_OF]->(child1),
  (grandma)-[:PARENT_OF]->(child1),

  // Create Laura (Michael's spouse)
  (spouse1:Person:parent:spouse {name: "Kavit Saboo", gender: "F",born:1974}),
  (child1)-[:MARRIED_TO]->(spouse1),
  (spouse1)-[:MARRIED_TO]->(child1),

  // Create their children (grandchildren)
  (gc1_1:Person:child {name: "Khushboo Saboo", gender: "F",born:1997}),
  (gc1_2:Person:child{name: "Rishit Saboo", gender: "M",born:2002}),
  (child1)-[:PARENT_OF]->(gc1_1),
  (spouse1)-[:PARENT_OF]->(gc1_1),
  (child1)-[:PARENT_OF]->(gc1_2),
  (spouse1)-[:PARENT_OF]->(gc1_2)
  
WITH grandpa, grandma
CREATE 
  // Create JITU (child of grandparents)
  (child2:Person:parent {name: "Jitendra Saboo", gender: "M",born :1971}),
  (grandpa)-[:PARENT_OF]->(child2),
  (grandma)-[:PARENT_OF]->(child2),

  // Create Laura (Michael's spouse)
  (spouse2:Person:parent:spouse {name: "Meena Saboo", gender: "F",born:1974}),
  (child2)-[:MARRIED_TO]->(spouse2),
  (spouse2)-[:MARRIED_TO]->(child2),

  // Create their children (grandchildren)
  (gc2_1:Person:child {name: "Vanshika Saboo", gender: "F",born:2003}),
  (gc2_2:Person:child {name: "Prajval Saboo", gender: "M",born:2011}),
  (child2)-[:PARENT_OF]->(gc2_1),
  (spouse2)-[:PARENT_OF]->(gc2_1),
  (child2)-[:PARENT_OF]->(gc2_2),
  (spouse2)-[:PARENT_OF]->(gc2_2)

WITH grandpa, grandma
CREATE 
  // Create ANIL (child of grandparents)
  (child3:Person:parent {name: "Anil Saboo", gender: "M",born :1973}),
  (grandpa)-[:PARENT_OF]->(child3),
  (grandma)-[:PARENT_OF]->(child3),

  // Create Laura (Michael's spouse)
  (spouse3:Person:parent:spouse {name: "Krishna Saboo", gender: "F",born:1974}),
  (child3)-[:MARRIED_TO]->(spouse3),
  (spouse3)-[:MARRIED_TO]->(child3),

  // Create their children (grandchildren)
  (gc3_1:Person:child{name: "Diya Saboo", gender: "F",born:2004}),
  (gc3_2:Person:child{name: "Kimisha Saboo", gender: "F",born:2006}),
  (child3)-[:PARENT_OF]->(gc3_1),
  (spouse3)-[:PARENT_OF]->(gc3_1),
  (child3)-[:PARENT_OF]->(gc3_2),
  (spouse3)-[:PARENT_OF]->(gc3_2)


WITH grandpa, grandma
CREATE 
  // Create  SUNITA (child of grandparents)
  (child5:Person:parent {name: "Sunita Mundra", gender: "F",born :1976}),
  (grandpa)-[:PARENT_OF]->(child5),
  (grandma)-[:PARENT_OF]->(child5),

  // Create Laura (Michael's spouse)
  (spouse5:Person:parent:spouse {name: "Kriparam  Mundra", gender: "M",born:1974}),
  (child5)-[:MARRIED_TO]->(spouse5),
  (spouse5)-[:MARRIED_TO]->(child5),
  
  (gc5_1:Person:child{name: "Saurabh Saboo", gender: "M",born:2000}),
  (child5)-[:PARENT_OF]->(gc5_1),
  (spouse5)-[:PARENT_OF]->(gc5_1),
  
  (spouse_gc5_1:person:spouse{name:"palak Saboo", gender:"F",born:2001}),
  (spouse_gc5_1)-[:MARRIED_TO]->(gc5_1),
  (gc5_1)-[:MARRIED_TO]->(spouse_gc5_1),
  
  (ggc5_1:person:grandchildren{name:"nurpendra" ,gender:"M",born:2023}),
  (gc5_1)-[:PARENT_OF]->(ggc5_1),
  (spouse_gc5_1)-[:PARENT_OF]->(ggc5_1)
  

  
  
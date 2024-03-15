model move_multiple

global {
    geometry shape <- rectangle(124, 62); //137.5, by 68.5 each square in the floor is 50 cm and so we have a predefined area of 7 by 4 squares
    geometry shape2 <- rectangle(124, 62); //137.5, by 68.5 each square in the floor is 50 cm and so we have a predefined area of 7 by 4 squares
    
    bool DrawExtendedInfo <- true;
    list<geometry> arena_keystone <- [{0.07832623134128786,0.23560979010275052,0.0},{-0.006373597739283254,1.2593646670452996,0.0},{0.9376499892395613,1.1372383010788627,0.0},{0.871195369551832,0.21421855843437076,0.0}];
    //[{0.07832623134128786,0.2369052063659174,0.0},{-0.006373597739283254,1.2593646670452996,0.0},{0.9292324705871248,1.134647468552529,0.0},{0.873299749214941,0.21162772590803702,0.0}];
    //[{0.08113207089210006,0.23431437383958365,0.0},{0.004148300576262587,1.2282746767292947,0.0},{0.9334412299133431,1.1424199661315302,0.0},{0.8789114283165654,0.21940022348703803,0.0}];
    //[{-0.17630370789492067,-0.3291917006379962,0.0},{-0.43847288856436434,1.4420183601518226,0.0},{1.2890813929787917,1.2875065876062153,0.0},{1.136347207103586,-0.22751838730552543,0.0}];
    //[{-0.180512467221139,-0.33167291716707215,0.0},{-0.4440845676659888,1.4407777518872846,0.0},{1.2813653342140578,1.2788223297544494,0.0},{1.137750126878992,-0.21511230466014652,0.0}];
    // [{-0.23592779834968056,-0.35400386592875444,0.0},{-0.5240509948641379,1.5859289188382206,0.0},{1.3676449004015334,1.4190110636472393,0.0},{1.1980756772214547,-0.2436462947445185,0.0}];
    int port <- 9876;
    string url <- "10.205.3.36";
    int number_of_agents <- 10; // New variable to specify the number of agents
    int first_agent_port <- 9876; // Starting port for the first agent
	int i <- 0;
	int proximity_graph_distance;
	bool draw_connections<- true;
	graph<simple_agent, simple_agent> proximity_graph;
	bool show_border<- false;

    init {
		create simple_agent number:number_of_agents {
		   do connect to: url protocol: "udp_server" port: first_agent_port+i;
		   i<-i+1;
		}
		

    
}
reflex updateProximityGraph when: draw_connections {

		proximity_graph <- graph<simple_agent, simple_agent>(list(simple_agent) as_intersection_graph(proximity_graph_distance));
		
	}


}

species simple_agent skills: [moving, network] {
	  float x <- 0.0;
	  float y <- 0.0;
	  float z <- 0.0;
	  point target_location <- {0,0,0};
	  float rot <- 50.0;
    
    
   
    reflex fetch when: has_more_message() {
    	
        loop while: has_more_message() {
        	
   
        		
        
	            message msg <- fetch_message();
	            list<string> coords <- msg.contents regex_matches("[-+]?\\d*\\.?\\d+");
	           
                target_location <- {float(coords[0]), float(coords[1]), 0};
                //write coords;
                do goto target: target_location;
                //write "Moving to: " + target_location;
                rot <- float(coords[2])*100;
                self.location <- target_location;
	                
	                
                
                //message msg <- message;
                
           
        }
        
    }

    aspect default {
    	
	    
        draw triangle(10) at: target_location color: #green rotate: rot;
//        Another way to see the distance between the agents of the same species
//        ask simple_agent at_distance(distance_to_intercept) {
//	    	draw polyline([self.location,myself.location]) color:#black;
	
	
		}
		
   
 
 }
 




grid space cell_width:15.5 cell_height:15.5  {
    aspect dev {
    	if (show_border){
    		draw shape color: #white border: #green width: 1;
    		
    	}
    	else
    	{
        draw shape color: #white border: #white width: 1;
        
        }
    }
}

experiment MainVisualize type: gui virtual: true {
	float minimum_cycle_duration<-0.001;
	parameter "Show Grid" var: show_border <- true category: "Wanna see the grid?" ; 
    parameter "URL" var: url <- "10.205.3.9" among: ["10.205.3.55", "127.0.0.1","10.205.3.9", "10.205.3.82"] category: "Connection Variables";
    parameter "PORT" var: port <- 9876 among: [9876, 1234,53408] category: "Connection Variables";
    parameter "Number of Agents" var: number_of_agents <- 2 min:0 max:10 category: "Connection Variables";
    parameter "Proximity graph distance" var: proximity_graph_distance <- 50 category: "Connectivity Interaction" min: 1 max:150;
    parameter "Draw connections" var: draw_connections <- true enables:[proximity_graph];
    output {
        display objects_display type: opengl toolbar: false virtual: true {
            species simple_agent position: {0, 0, 0.01};
            graphics "proximity_graph" {
				if(draw_connections){

					loop eg over: proximity_graph.edges {
						geometry edge_geom <- geometry(eg);
						
						
						draw line(edge_geom.points) color:#green width: 6;
						int edge_distance_in_cms <- round(edge_geom.points[0] distance_to edge_geom.points[1]);
						
						
						point middle_of_the_line <- {((edge_geom.points[0].x+edge_geom.points[1].x)/2),((edge_geom.points[0].y+edge_geom.points[1].y)/2)+5};
						draw(string(edge_distance_in_cms)) color: #green rotate:90 at: middle_of_the_line font:font("SansSerif", 25 , #plain);

						}
					
			
				}
			}
        }
    }
}



experiment Move_Dev parent: MainVisualize type: gui {
  
    output {
        display objects_display_simulator parent: objects_display fullscreen: 0 {
            species space position: {0, 0, -0.01} aspect: dev;
        }
    }
}


experiment Move parent: MainVisualize type: gui {    
    output {
        display objects_display_simulator parent: objects_display fullscreen: 1 keystone: arena_keystone {
            species space position: {0, 0, -0.01} aspect:dev;
        }
    }
}


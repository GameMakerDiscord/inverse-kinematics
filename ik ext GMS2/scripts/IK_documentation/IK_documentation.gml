																								/// @func IK_documentation()
	/* Made by TonyStr */		Version = 1.2;			Doc_Version = 1.2;						/**/if 0{var arm_functions=0; #macro _WARNING_ ; 
																								/**/#macro _OPTIONAL_ ; 
																								/**/var title0=
	"INTRODUCTION"																				/*
	
	Thank you for installing the inverse kinematics extension!
	Below, you can find the documentation for all the functions included in
	this extension. If you have not used inverse kinematics before, or you
	want to learn how you could make them yourself, I have made a tutorial
	(in a similar format) which you can find here:					 							*/var tutorial=
	" https://github.com/tonystr/Inverse-kinematics-4-everyone "								/*
	using the tutorial is entirely _OPTIONAL_, one of the reasons that I made 
	this extension for, is people who don't have the time or motivation to 
	learn them on their own.
	Learning inverse kinematics by studying the functions included here is
	not reccomended, but probably possible.
	
	If you find any errors in the documentation or some of the functions
	don't act as described, contact me via														*/var mail=
	" tony.stroemsnaes@gmail.com "																/*
	
	"Data types":
	(bool)			  - Boolean value,						  (true / false)
	(real)			  - Real number with or without decimals, (97   / 2.316)
	(integer)		  - A whole number without decimals,	  (126  /     1)
	(angular degree) - Real number between 0 and 360,		  (256  / 4.091)
	(array)			  - Sequence/collection of values         (a[7] / ar[0])
	[Read-only]		  - Do not modify directly				  (   ERROR    )
	
	
																								*/var title1=
	"HOW TO USE"																				/*
	
	When using the Inverse Kinematics functions, you first have to turn an
	object into an "Inverse kinematics object". This is done by calling							
	*/arm_initialize()/* in the create event of any object. This sets the 
	neccesary variables and creates the needed arrays.
	
	
	
																								*/var title2=
	"DOCUMENTATION"  																			/**/var
	
	arm_functions;																				/*
	These are all the functions that deal with whole arms.										*/				
			
			
	arm_initialize();																			#region	
																								/*
		Description:
			This function initalizes all the neccesary variables and arrays 
			that all the other functions require to work. This function turns 
			the object into an "Inverse Kinematic Object", and MUST be called 
			in an object before it utilizes any of the other functions. 
		
		Arguments:																				*/var
			length; 																			/*
			(real) The length of the whole arm. if the arm is fully stretched out, it
			will be this length, if you add together the length of every 
			segment, you will get this length. It's length can be changed later
			with the function */arm_set_length();/*										
			*/_WARNING_/* values less than or equal to zero will yeald unexpected
			results!
																								*/var
			segments;																			/*
			(integer) The amount of segments the arm will be split into. A segment
			is the line/sprite between one joint and another.  
			*/_WARNING_/* values less than or equal to zero will yield unexpected
			results!
																								*/var
			sprite	_OPTIONAL_																	/*
			You can optionally specify a sprite to assign every segment, or you
			could pass in an array containing all the sprites to use (if the array
			is shorter than the amount of segments, you will get an error). If you 
			do not pass in a sprite or array, it will set all the segment sprites to
			the sprite_index. If you do not wish for the arm to have any sprites, but
			instead draw lines, pass in noone.
			
		Returns: 
			real | segment lengths
			
*/#endregion																	
	
	arm_initialize_seg();																		#region	
																								/*
		Description:
			This function is the same as */arm_initialize();/*, but it takes
			segment length (length of individual segments) as an argument 
			instead of arm length. It initalizes all the neccesary variables 
			and arrays that all the other functions require to work. This 
			function turns the object into an "Inverse Kinematic Object", and 
			MUST be called in an object before it utilizes any of the other 
			functions included with this extension. 
		
		Arguments:																				*/var
			length; 																			/*
			(real) The length of the segments. All the segments will be initialized 
			with the same length, and this variable dictates that length. 									
			*/_WARNING_/* values less than or equal to zero will yeald unexpected
			results!
																								*/var
			segments;																			/*
			(integer) The amount of segments the arm will be split into. A segment
			is the line/sprite between one joint and another.  
			*/_WARNING_/* values less than or equal to zero will yield unexpected
			results!
																								*/var
			sprite	_OPTIONAL_																	/*
			You can optionally specify a sprite to assign every segment, or you
			could pass in an array containing all the sprites to use (if the array
			is shorter than the amount of segments, you will get an error). If you 
			do not pass in a sprite or array, it will set all the segment sprites to
			the sprite_index. If you do not wish for the arm to have any sprites, but
			instead draw lines, pass in noone.
			
		Returns: 
			real | length of the whole arm
			
*/#endregion																	
	
	arm_move_to();																				#region
																								/*
		Description:
			This function instantly moves the arm to a location. This function 
			essentually does the Inverse Kinematics. You can _OPTIONAL_ly "pin" 
			the arm to a location, so that it will not move freely.
			
		Arguments:																				*/
			x																					/**/=x;/*
			(real) The x location to move the tip of the arm towards. 
																								*/
			y																					/**/=y;/*
			(real) The y location to move the tip of the arm towards.
																								*/ var
			pin _OPTIONAL_																		/*															
			(bool) whether to pin (true) or not (false). if you do not fill in
			the two next arguments, it will pin itself to the object's x and y
			location. pinning and object means holding it back, "pinning" it to
			a location. alternatively, you can leave this argument blank, and 
			the arm will instead look at */arm_pinned/* to see whether it should				*/=arm_pinned/*
			be pinned or not. This argument overrides that variable, however it 
			does not change it.
																								*/var
			px	_OPTIONAL_																		/*															
			(real) custom x location to pin arm to	
																								*/var
			py	_OPTIONAL_																		/*															
			(real) custom y location to pin arm to
		
		Returns: 
			N/A	

*/#endregion
	
	arm_move_towards();																			#region
																								/*
		Description:
			This function moves the arm towards a location. This function 
			essentually does the Inverse Kinematics. You can _OPTIONAL_ly "pin" 
			the arm to a location, so that it will not move freely.
			
		Arguments:																				*/
			x																					/**/=x;/*
			(real) The x location to move the tip of the arm towards. 
																								*/
			y																					/**/=y;/*
			(real) The y location to move the tip of the arm towards.
																								*/ var
			len																					/*
			(real) the length to move the tip of the arm each step.
																								*/ var
			pin _OPTIONAL_																		/*															
			(bool) whether to pin (true) or not (false). if you do not fill in
			the two next arguments, it will pin itself to the object's x and y
			location. pinning and object means holding it back, "pinning" it to
			a location. alternatively, you can leave this argument blank, and 
			the arm will instead look at */arm_pinned/* to see whether it should				*/=arm_pinned/*
			be pinned or not. This argument overrides that variable, however it 
			does not change it.
																								*/var
			px	_OPTIONAL_																		/*															
			(real) custom x location to pin arm to	
																								*/var
			py	_OPTIONAL_																		/*															
			(real) custom y location to pin arm to
		
		Returns: 
			bool | whether the arm has reached the target loaction (true) or not
			(false)

*/#endregion
	
	arm_move_dir();																				#region
																								/*
		Description:
			This function moves the arm towards a direction. This function 
			essentually does the Inverse Kinematics. You can _OPTIONAL_ly "pin" 
			the arm to a location, so that it will not move freely.
			
		Arguments:																				*/
			dir																					/**/=x;/*
			(real) The direction location to move the tip of the arm towards. 
																								*/var
			len																					/*
			(real) the length to move the tip of the arm each step.
																								*/var
			pin _OPTIONAL_																		/*															
			(bool) whether to pin (true) or not (false). if you do not fill in
			the two next arguments, it will pin itself to the object's x and y
			location. pinning and object means holding it back, "pinning" it to
			a location. alternatively, you can leave this argument blank, and 
			the arm will instead look at */arm_pinned/* to see whether it should				*/=arm_pinned/*
			be pinned or not. This argument overrides that variable, however it 
			does not change it.
																								*/var
			px	_OPTIONAL_																		/*															
			(real) custom x location to pin arm to	
																								*/var
			py	_OPTIONAL_																		/*															
			(real) custom y location to pin arm to
		
		Returns: 
			N/A

*/#endregion
	
	arm_relocate();																				#region
																								/*
		Description:
			This function relocates the WHOLE ARM to a given loaction WITHOUT 
			CALCULATING THE INVERSE KINEMATICS.
			Also updates the x/y variables to the new position
			
		Arguments:																				*/
			x																					/**/=x;/*
			(real) the x position to move to. 
																								*/y=
			y																					/*
			(real) the y position to move to.
		
		Returns: 
			N/A

*/#endregion
	
	arm_draw();																					#region	
																								/*
		Description:
			Draws the arm. If a segment has a sprite assigned to it, then it 
			draw that, if not, it will draw a line.
			*/_WARNING_/* only works in draw events
			
		Arguments:																		
			N/A
		
		Returns: 
			N/A
			
*/#endregion

	arm_set_length();																			#region	
																								/*
		Description:
			Sets the length of the arm. this function can be used to change 
			the length of an arm after it has been created. You can also
			specify how many segments you want the arm to have.
			*/_WARNING_/* this function resets all the segments' lengths.
			
		Arguments:																				*/var
			length 																				/*												
			(real) The length of the whole arm. if the arm is fully stretched out, it
			will be this length, if you add together the length of every 
			segment, you will get this length.
			*/_WARNING_/* values less than or equal to zero will yield unexpected
			results!
																								*/var
			segments 																			/*
			(real) The amount of segments the arm will be split into. A segment
			is the line/sprite between one joint and another. 
			*/_WARNING_/* values less than or equal to zero will yield unexpected
			results!
		
		Returns: 
			real | segment lengths
			
*/#endregion		

	arm_apply_force();																			#region	
																								/*
		Description:
			Applies a force to the arm. Can be used for applying gravity
			
		Arguments:																				*/var
			force 																				/*																		
			(real) the force that will be applied to the arm. 
																								*/var
			dir 																				/*																		
			(angular degree) the direction of the force that will be applied to the 
			arm. 
		
		Returns: 
			N/A
			
*/#endregion
	
	arm_rotate();																				#region	
																								/*
		Description:
			Rotates the arm around a given segment. (psst. This function is 
			actually forward kinematics, DON'T TELL ANYONE)
			
		Arguments:																				*/var
			angle 																				/*																		
			(angular degree) the angle to rotate to/by
																								*/var
			seg 																				/*																		
			(integer) the segment to rotate around
																								*/var
			relative	_OPTIONAL_ 																	/*																		
			(bool) whether to set the rotation of the arm to the given angle 
			(true) or to rotate relative to the current angle (false)
		
		Returns: 
			N/A
			
*/#endregion
	
	arm_meeting();																				#region	
																								/*
		Description:
			Checks for collisions between the arm and obj. If a segment has a 
			sprite assigned to it, this function will use the mask of that 
			sprite to check for collisions. If a segment does not have a 
			sprite assigned to it, this function will check for collisions
			along a 1px wide line.
			
		Arguments:																				*/var
			obj 																				/*																		
			(real - either an instance id, or an object index) The object or 
			instance to check for collisions with
		
		Returns: 
			real - either an instance id, or the keyword noone | the instance
			that the arm collides with.
			
*/#endregion	

	arm_meeting_line();																			#region	
																								/*
		Description:
			Checks for collisions between the arm and obj.
			*/_WARNING_/* This uses one pixel large lines for collision checking,
			Use */arm_meeting_mask()/* for accurate collsions when using 
			segments with sprites, or use */arm_meeting()/* to use both on the 
			same arm.
			
		Arguments:																				*/var
			obj 																				/*																		
			(real - either an instance id, or an object index) The object or 
			instance to check for collisions with
		
		Returns: 
			real - either an instance id, or the keyword noone | the instance
			that the arm collides with.
			
*/#endregion	
	
	arm_meeting_mask();																			#region	
																								/*
		Description:
			Checks for collisions between the arm and obj.
			*/_WARNING_/* This uses the sprite mask of each individual segment 
			for collision checking, use */arm_meeting_line()/* for accurate 
			collsions when using segments with sprites, or use 
			*/arm_meeting()/* to use both on the same arm.
			
		Arguments:																				*/var
			obj 																				/*																		
			(real - either an instance id, or an object index) The object or 
			instance to check for collisions with
		
		Returns: 
			real - either an instance id, or the keyword noone | the instance
			that the arm collides with.
			
*/#endregion	

	arm_fix();																					#region	
																								/*
		Description:
			Makes sure all joints are outside an object/instance's bounding box.
			Can be used for colliding with objects.
			*/_WARNING_/* This function is experimental/half-assed. It does not
			respect the length of the segments, and does not care if a segment
			goes through the object, only the joints. 
			
		Arguments:																				*/var
			obj 																				/*																		
			(real - either an instance id, or an object index) The object or 
			instance to avoid
		
		Returns: 
			integer | amount of segments that have been moved
			
*/#endregion	

	arm_pin();																					#region	
																								/*
		Description:
			Pins an arm to a given location. This modifies the x and y 
			variables and sets arm_pinned to true
			
		Arguments:																				*/x=
			x 																					/*																		
			(real) The x position to pin to
																								*/x=
			y 																					/*																		
			(real) The y position to pin to
		
		Returns: 
			N/A
			
*/#endregion	
		
	arm_reconnect();																			#region	
																								/*
		Description:
			When modifying the positions/lengths of an arm, most of these functions
			do not make sure all segments are properly connected  afterwards, as
			that could slow down the program by a considerable amount. This means
			that if you do not reconnect all the segments afterwards, you may end
			up with disconnected segments, or segments longer/shorter than they are
			supposed to be. arm_reconnect reconnects all segments without moving the
			arm.
			
		Arguments:																				*/ var
			pin _OPTIONAL_																		/*															
			(bool) whether to pin (true) or not (false). if you do not fill in
			the two next arguments, it will pin itself to the object's x and y
			location. pinning and object means holding it back, "pinning" it to
			a location. alternatively, you can leave this argument blank, and 
			the arm will instead look at */arm_pinned/* to see whether it should				*/=arm_pinned/*
			be pinned or not. This argument overrides that variable, however it 
			does not change it.
																								*/ var
			px	_OPTIONAL_																		/*															
			(real) custom x location to pin arm to	
																								*/ var
			py	_OPTIONAL_																		/*															
			(real) custom y location to pin arm to
		
		Returns: 
			N/A
			
*/#endregion	
	

	
																								/**/var
	segment_functions;																			/*
	These are all the functions that deal with individual segments.								*/	
	
	
	seg_calculate();																			#region	
																								/*
		Description:
			Calculates the coordinates of a segment in relation to the 
			given coordinates. This function is the core of Inverse 
			Kinematics, it ALWAYS respects the length of each segment, 
			and rotates it to face the next segment.
			
		Arguments:																				*/ var
			seg 																				/*
			(integer) the index of the segment to calculate a new position for.
																								*/ x=
			x 																					/*
			(real) the x position to calculate against.
																								*/ y=
			y																					/*
			(real) the y position to calculate against.
		
		Returns: 
			N/A
			
*/#endregion

	seg_draw();																					#region	
																								/*
		Description:
			Draws a generic segment. If the segment has a sprite, it's sprite
			will be drawn, if not, it will be darwn as a line.
			
		Arguments:																				*/ var
			seg 																				/*
			(integer) the index of the segment to calculate a new position for.
																								*/ x=
			x 																					/*
			(real) the x position to calculate against.
																								*/ y=
			y																					/*
			(real) the y position to calculate against.
		
		Returns: 
			N/A
			
*/#endregion

	seg_apply_force();																			#region	
																								/*
		Description:
			applies a force to a segment. 
			
		Arguments:																				*/ var
			seg 																				/*
			(real) The index of the segment to apply the force to.
																								*/ var
			force 																				/*
			(real) The force to apply (how many pixels to move).
																								*/ var
			dir 																				/*
			(angular degree) The dircetion of the force.
		
		Returns: 
			N/A
			
*/#endregion
	
	seg_set_length();																			#region	
																								/**/x=/*
		Description:
			Sets the length of a given segment. this function can be used to 
			change the length of a segment after it has been created. This 
			function also calculates the new */arm_length/* for you.
			
		Arguments:																				*/var
			seg 																				/*												
			(integer) The segment index to modify the length of.
			*/_WARNING_/* values less than zero or larger than */seg_amount/* may					*/=2/*
			yield unexpected results!
																								*/var
			length 																				/*
			(real) The length of the whole arm. if the arm is fully stretched out, it
			will be this length, if you add together the length of every 
			segment, you will get this length.
			*/_WARNING_/* values less than or equal to zero may yield unexpected
			results!
		
		Returns: 
			real | segment lengths
			
*/#endregion	 	
	
	seg_get_angle();																			#region	
																								/*
		Description:
			Gets the angle of a given segment.
			
		Arguments:																				*/var
			seg 																				/*												
			(integer) The segment index to get the angle of.
			*/_WARNING_/* values less than zero or larger than or equal to */seg_amount/*
			may yield unexpected results!														*/=2/*
		
		Returns: 
			angular degree | segment angle
			
*/#endregion	 	
	
	seg_delete();																				#region	
																								/*
		Description:
			Deletes a segment.
			
		Arguments:																				*/var
			seg 																				/*												
			(integer) The segment index to delete.
			*/_WARNING_/* values less than zero or larger than or equal to */seg_amount/*
			may yield unexpected results!														*/=2/*
		
		Returns: 
			N/A
			
*/#endregion	 	
	
	seg_insert();																				#region	
																								/*
		Description:
			Inserts a segment before the given segment index.
			
		Arguments:																				*/var
			seg 																				/*												
			(integer) The segment index to insert before.
			*/_WARNING_/* values less than zero or larger than or equal to */seg_amount/*
			may yield unexpected results!														*/=2/*
																								*/var
			len 																				/*												
			(real) The length for the segment.
																								*/var
			spr 																				/*												
			(real) The sprite of the segment.
		
		Returns: 
			N/A
			
*/#endregion	 	
	
	seg_add();																					#region	
																								/*
		Description:
			Adds a segment at the end of the arm.
			
		Arguments:																				*/var
																			
			len 																				/*												
			(real) The length for the segment.
																								*/var
			spr 																				/*												
			(real) The sprite of the segment.
		
		Returns: 
			N/A
			
*/#endregion	 	
	
	seg_meeting();																				#region	
																								/*
		Description:
			Checks for a collision between the specified segment and obj. If 
			the segment has a sprite assigned to it, this function will use 
			the mask of that sprite to check for collisions. If a segment does 
			not have a sprite assigned to it, this function will check for 
			collisions along a 1px wide line.
			
		Arguments:																				*/ var
			seg 																				/*
			(integer) The index of the segment to check for collisions
																								*/ var
			obj 																				/*
			(real - Instance ID or object index) The object or instance to check 
			or collisions against
		
		Returns: 
			Boolean | Returns whether a collision is found (true) or not (false)
			
*/#endregion	

	seg_meeting_line();																			#region	
																								/*
		Description:
			Checks for a collision between the specified segment and obj.
			*/_WARNING_/* This uses one pixel large lines for collision checking,
			Use */seg_meeting_mask()/* for accurate collsions when using 
			segments with sprites, or use */seg_meeting()/* to use both
			
		Arguments:																				*/ var
			seg 																				/*
			(integer) The index of the segment to check for collisions
																								*/ var
			obj 																				/*
			(real - Instance ID or object index) The object or instance to check 
			for collisions against
		
		Returns: 
			Boolean | Returns whether a collision is found (true) or not (false)
			
*/#endregion	
	
	seg_meeting_mask();																			#region	
																								/*
		Description:
			Checks for a collision between the specified segment and obj.
			*/_WARNING_/* This uses the mask of the sprite assigned to the 
			specified segment for collision checking,
			Use */seg_meeting_line()/* for accurate collsions when only 
			drawing 1px wide lines, or use */seg_meeting()/* to use both
			
		Arguments:																				*/ var
			seg 																				/*
			(integer) The index of the segment to check for collisions
			*/_WARNING_/* values less than zero or larger than */seg_amount/* may					*/=2/*
			yield unexpected results!
																								*/ var
			obj 																				/*
			(real - Instance ID or object index) The object or instance to check 
			for collisions against
		
		Returns: 
			Boolean | Returns whether a collision is found (true) or not (false)
			
*/#endregion	



	
																								/**/ var
	variables;																					/*
	These are all the variables and functions initialized by 
	*/arm_initialize()/*. These variables are central to the extension,
	and modifying anything that is marked as [Read-only] is prone to cause
	all sorts of errors, some of which may not be immediately apperent.\
	
																								*/x=																			
	arm_length																					#region
																								/*
		Description:
			The length of the whole arm. if the arm is fully stretched out, it
			will be this length, if you add together the length of every 
			segment, you will get this length.
			*/_WARNING_/* values less than or equal to zero will yeald unexpected
			results!
			
		Datatype:
			(real) [Read-only] - modify with	*/arm_set_length()/*
												*/seg_delete()/*
												*/seg_insert()/*

*/#endregion
																								x=
	arm_pinned																					#region
																								/*
		Description:
			Whether the arm is pinned to it's x and y position (true)
			or not (false)
			
		Datatype:
			(bool)

*/#endregion
																								x=
	seg_amount																					#region
																								/*
		Description:
			The amount of segments the arm is split up into.
			
		Datatype:
			(integer) [Read-only] - modify with */arm_set_length()/*
												*/seg_delete()/*
												*/seg_insert()/*

*/#endregion
																								x=
	seg_x																						#region
																								/*
		Description:
			The x position of a segment. to find the x position of the end
			of a segment, refer to the next index of seg_x
			
		Datatype:
			(array)

*/#endregion
																								x=
	seg_y																						#region
																								/*
		Description:
			The y position of each segment. to find the y position of the end
			of a segment, refer to the next index of seg_y
			
		Datatype:
			(array)

*/#endregion
																								x=
	seg_len																						#region
																								/*
		Description:
			The length of each segment
			
		Datatype:
			(array) [Read-only] - modify with	*/arm_set_length()/*
												*/seg_delete()/*
												*/seg_insert()/*

*/#endregion
																								x=
	seg_spr																						#region
																								/*
		Description:
			The sprite of each segment
			
		Datatype:
			(array)

*/#endregion

																								} 
																								#macro arm_end_x seg_x[seg_amount]
																								#macro arm_end_y seg_y[seg_amount]
																								#macro arm_start_x seg_x[0]
return 0;																						#macro arm_start_y seg_y[0]
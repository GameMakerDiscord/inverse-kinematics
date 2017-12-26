                                                                                                            var doc=/*
    -Made by TonyStr-       Version: BETA[1]
                                                                                                            
    Converting the documentation from gamemaker studio 2 to gamemaker studio 1.4 
    would take too much time, so instead you will have to use the google docs
    version of the documentation.
                                                                                                            */"
    https://docs.google.com/document/d/1MQ5-0cVpJ-1f5fK8ZrOUYlWv1lDsMEs8db5QWa_nYlQ/edit?usp=sharing
                                                                                                            "/*
        
                                                                                                            
                                       
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                                                                                                
              BACKUP DOCUMENTATION IN CASE LINK DOES NOT WORK.
    (THIS DOCUMENTATION MAY CONTAIN ERRORS AND IS HARD TO READ, PLEASE USE THE 
    GOOGLE DOCS LINK IF POSSIBLE)                                                                                              
                                                                                                            
                                                                                                            
    INTRODUCTION
    
    Thank you for Installing the Inverse Kinematics extension!
    Below, you can find the documentation for all the functions included in
    this extension. If you have not used inverse kinematics before, or you
    want to learn how you could make them yourself, I have made a tutorial
    (in a similar format) which you can find here:
    https://github.com/tonystr/Inverse-kinematics-4-everyone
    using the tutorial is entirely optional, one of the reasons that I made 
    this extension for, is people who don't have the time or motivation to 
    learn them on their own.
    Learning inverse kinematics by studying the functions included here is
    not recommended, but probably possible.
    
    If you find any errors in the documentation or some of the functions
    don't act as described, contact me via
    tony.stroemsnaes@gmail.com
    "Data types":
    (bool)  - Boolean value,                                 (true /    false)
    (real)  - Real number with or without decimals,   (97    /  2.316)
    (integer)  - A whole number without decimals,         (126  /         1)
    (angular degree)   - Real number between 0 and 360,         (256  /  4.091)
    (array)  - Sequence/collection of values                (a[7]  /    ar[0])
    [Read-only]  - Do not modify directly         (!!!!!!!!!!!!!!!!!!!!)
    [GMS:2]  - Only present in the GMS:2 version         (!!!!!!!!!!!!!!!!!!!!)
    [GMS:1]  - Only present in the GMS:1.4 version      (!!!!!!!!!!!!!!!!!!!!)
    
    
    
    HOW TO USE
    
    When using the Inverse Kinematics functions, you first have to turn an
    object into an "Inverse kinematics object". This is done by calling 
    arm_initialize() in the create event of any object. This sets the 
    necessary variables and creates the needed arrays.
    
    An alternative way to create arms (instances that run Inverse Kinematic 
    functions) is to use the function arm_create_instance()
    
    
    
    
    DOCUMENTATION
    arm_functions
    These are all the functions that deal with whole arms.
    arm_initialize();
    
    Description:
    This function initializes all the necessary variables and arrays 
    that all the other functions require to work. This function turns 
    the object into an "Inverse Kinematic Object", and MUST be called 
    in an object before it utilizes any of the other functions. 
    
    Arguments:
    length; 
    (real) The length of the whole arm. if the arm is fully stretched out, it
    will be this length, if you add together the length of every 
    segment, you will get this length. It's length can be changed later
    with the function arm_set_length();
    WARNING values less than or equal to zero will yield unexpected
    results!
    segments;
    (integer) The amount of segments the arm will be split into. A segment
    is the line/sprite between one joint and another.  
    WARNING values less than or equal to zero will yield unexpected
    results!
    
    Returns: 
    real | segment lengths
    
    
    
    
    
    arm_initialize_seg();
    Description:
    This function is the same as arm_initialize();, but it takes
    segment length (length of individual segments) as an argument 
    instead of arm length. It initializes all the necessary variables 
    and arrays that all the other functions require to work. This 
    function turns the object into an "Inverse Kinematic Object", and 
    MUST be called in an object before it utilizes any of the other 
    functions included with this extension. 
    
    Arguments:
    length; 
    (real) The length of the segments. All the segments will be initialized 
    with the same length, and this variable dictates that length.
    WARNING values less than or equal to zero will yield unexpected
    results!
    
    segments;
    (integer) The amount of segments the arm will be split into. A segment
    is the line/sprite between one joint and another.  
    WARNING values less than or equal to zero will yield unexpected
    results!
    
    Returns: 
    real | length of the whole arm
    
    
    
    
    
    
    
    
    
    
    
    
    
    arm_move_to();
    Description:
    This function instantly moves the arm to a location. This function 
    essentially does the Inverse Kinematics. You can optionally "pin" 
    the arm to a location, so that it will not move freely.
    
    Arguments:
    x
    (real) The x location to move the tip of the arm towards. 
    
    y
    (real) The y location to move the tip of the arm towards.
    
    pin OPTIONAL
    (bool) whether to pin (true) or not (false). if you do not fill in
    the two next arguments, it will pin itself to the object's x and y
    location. pinning and object means holding it back, "pinning" it to
    a location. alternatively, you can leave this argument blank, and 
    the arm will instead look at arm_pinned to see whether it should
    be pinned or not. This argument overrides that variable, however it 
    does not change it.
    
    pxOPTIONAL
    (real) custom x location to pin arm to
     
    pyOPTIONAL
    (real) custom y location to pin arm to
    
    Returns: 
    N/A
    
    
    
    
    
    
    arm_move_towards();
    Description:
    This function moves the arm towards a location. This function 
    essentially does the Inverse Kinematics. You can optionally "pin" 
    the arm to a location, so that it will not move freely.
    
    Arguments:
    x(real) The x location to move the tip of the arm towards. 
    y(real) The y location to move the tip of the arm towards.
    
    len(real) the length to move the tip of the arm each step.
    
    pin OPTIONAL
    (bool) whether to pin (true) or not (false). if you do not fill in
    the two next arguments, it will pin itself to the object's x and y
    location. pinning and object means holding it back, "pinning" it to
    a location. alternatively, you can leave this argument blank, and 
    the arm will instead look at arm_pinned to see whether it should
    be pinned or not. This argument overrides that variable, however it 
    does not change it.
    
    pxOPTIONAL
    (real) custom x location to pin arm to
    
    pyOPTIONAL
    (real) custom y location to pin arm to
    
    Returns: 
    bool | whether the arm has reached the target location (true) or not
    (false)
    
    
    
    
    
    
    arm_move_dir();
    Description:
    This function moves the arm towards a direction. This function 
    essentially does the Inverse Kinematics. You can optionally "pin" 
    the arm to a location, so that it will not move freely.
    
    Arguments:
    dir
    (real) The direction location to move the tip of the arm towards. 
    
    len(real) the length to move the tip of the arm each step.
    pin OPTIONAL
    (bool) whether to pin (true) or not (false). if you do not fill in
    the two next arguments, it will pin itself to the object's x and y
    location. pinning and object means holding it back, "pinning" it to
    a location. alternatively, you can leave this argument blank, and 
    the arm will instead look at arm_pinned to see whether it should
    be pinned or not. This argument overrides that variable, however it 
    does not change it.
    
    pxOPTIONAL(real) custom x location to pin arm to
    pyOPTIONAL(real) custom y location to pin arm to
    
    Returns: 
    N/A
    
    
    
    
    
    
    
    
    
    
    
    arm_relocate();
    
    Description:
    This function moves the WHOLE ARM to a given location WITHOUT 
    INVERSE KINEMATICS.
    
    Arguments:
    x(real) the x position to move to. 
    
    y(real) the y position to move to.
    
    Returns: 
    N/A
    
    arm_draw();
    
    Description:
    Draws the arm. If a segment has a sprite assigned to it, then it 
    draw that, if not, it will draw a line.
    WARNING only works in draw events
    
    Arguments:
    N/A
    
    Returns: 
    N/A
    
    
    
    
    
    
    
    
    
    
    
    
    arm_set_length();
    Description:
    Sets the length of the arm. this function can be used to change 
    the length of an arm after it has been created. You can also
    specify how many segments you want the arm to have.
    WARNING this function resets all the segments' lengths.
    
    Arguments:
    
    length 
    (real) The length of the whole arm. if the arm is fully stretched out, it
    will be this length, if you add together the length of every 
    segment, you will get this length.
    WARNING values less than or equal to zero will yield unexpected
    results!
    
    segments 
    (real) The amount of segments the arm will be split into. A segment
    is the line/sprite between one joint and another. 
    WARNING values less than or equal to zero will yield unexpected
    results!
    
    Returns: 
    real | segment lengths
    
    arm_apply_force();
    Description:
    Applies a force to the arm. Can be used for applying gravity
    
    Arguments:
    
    force (real) the force that will be applied to the arm. 
    dir (angular degree) the direction of the force that will be applied to the 
    arm. 
    
    Returns: 
    N/A
    
    
    
    arm_rotate();
    Description:
    Rotates the arm around a given segment. (psst. This function is 
    actually forward kinematics, DON'T TELL ANYONE)
    
    Arguments:
    angle (angular degree) the angle to rotate to/by
    
    seg (integer) the segment to rotate around
    relativeOPTIONAL 
    (bool) whether to set the rotation of the arm to the given angle 
    (true) or to rotate relative to the current angle (false)
    
    Returns: 
    N/A
    
    arm_meeting();
    Description:
    Checks for collisions between the arm and obj. If a segment has a 
    sprite assigned to it, this function will use the mask of that 
    sprite to check for collisions. If a segment does not have a 
    sprite assigned to it, this function will check for collisions
    along a 1px wide line.
    
    Arguments:
    
    obj 
    (real - either an instance id, or an object index) The object or 
    instance to check for collisions with
    
    Returns: 
    real - either an instance id, or the keyword noone | the instance
    that the arm collides with.
    
    
    
    
    arm_meeting_line();
    Description:
    Checks for collisions between the arm and obj.
    WARNING This uses one pixel large lines for collision checking,
    Use arm_meeting_mask() for accurate collisions when using 
    segments with sprites, or use arm_meeting() to use both on the 
    same arm.
    
    Arguments:
    
    obj 
    (real - either an instance id, or an object index) The object or 
    instance to check for collisions with
    
    Returns: 
    real - either an instance id, or the keyword noone | the instance
    that the arm collides with.
    
    arm_meeting_mask();
    Description:
    Checks for collisions between the arm and obj.
    WARNING This uses the sprite mask of each individual segment 
    for collision checking, use arm_meeting_line() for accurate 
    collisions when using segments with sprites, or use 
    arm_meeting() to use both on the same arm.
    
    Arguments:
    obj (real - either an instance id, or an object index) The object or 
    instance to check for collisions with
    
    Returns: 
    real - either an instance id, or the keyword noone | the instance
    that the arm collides with.
    
    
    
    
    
    
    arm_fix();
    Description:
    Makes sure all joints are outside an object/instance's bounding box.
    Can be used for colliding with objects.
    WARNING This function is experimental/half-assed. It does not
    respect the length of the segments, and does not care if a segment
    goes through the object, only the joints. 
    
    Arguments:
    obj (real - either an instance id, or an object index) The object or 
    instance to avoid
    
    Returns: 
    integer | amount of segments that have been moved
    
    arm_pin();
    Description:
    Pins an arm to a given location. This modifies the x and y 
    variables and sets arm_pinned to true
    
    Arguments:
    x (real) The x position to pin to
    y (real) The y position to pin to
    
    Returns: 
    N/A
    
    
    
    
    
    
    
    
    arm_reconnect();
    
    Description:
    When modifying the positions/lengths of an arm, most of these 
    functions do not make sure all segments are properly connected 
    afterwards, as that could slow down the program by a considerable amount. 
    This means that if you do not reconnect all the segments afterwards, you may 
    end up with disconnected segments, or segments longer/shorter than they are 
    supposed to be. arm_reconnect reconnects all segments without moving the arm.

    
    Arguments:
    pin OPTIONAL(bool) whether to pin (true) or not (false). if you do not fill in
    the two next arguments, it will pin itself to the object's x and y
    location. pinning and object means holding it back, "pinning" it to
    a location. alternatively, you can leave this argument blank, and 
    the arm will instead look at arm_pinned to see whether it should
    be pinned or not. This argument overrides that variable, however it 
    does not change it.
    pxOPTIONAL(real) custom x location to pin arm to
    pyOPTIONAL(real) custom y location to pin arm to
    
    Returns: 
    N/A
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    arm_create_instance();
    Description:
    Creates an instance of IK_arm_default and assigns the given 
    values
    WARNING this function requires an object called obj_arm_default
    to exist in the resource tree. Tampering with this object is 
    likely to cause errors.
    
    Arguments:
    
    x (real) The x position to create the arm at
    y (real) The y position to create the arm at
    
    depth (real) The depth to assign the arm
    
    length(real) The length of the whole arm. if the arm is fully stretched 
    out, it will be this length, if you add together the length of every 
    segment, you will get this length. It's length can be changed later
    with the function arm_set_length();
    WARNING values less than or equal to zero may yield unexpected
    results!
    
    segments
    (real) The amount of segments the arm will be split into. A segment
    is the line/sprite between one joint and another.  
    WARNING values less than or equal to zero will yield unexpected
    results!
    
    speed
    (real) the max speed the arm can move each step. Set to -1 for 
    infinite (can be accessed like this: arm_id.arm_speed) 
    
    target
    (real - Instance ID) The Instance that the arm will 
    follow, set to noone if you want to specify coordinates or you
    want to move it externally 
    (arm_id.target_x = 16, arm_id.target_y = 32)
    
    
    target_xOPTIONAL
    (real) The x position to move to if the target does not 
    exist
    
    target_yOPTIONAL
    (real) The y position to move to if the target does not 
    exist
    
    Returns: 
    real - Instance ID | The ID of the arm instance that have been 
    created
    
    arm_create_instance_seg();
    Description:
    Creates an instance of obj_arm_default and assigns the given 
    values, while taking segment length as an argument instead 
    of arm_length
    WARNING this function requires an object called obj_arm_default
    to exist in the resource tree. Tamperining with this object is 
    likely to cause errors.
    
    Arguments:
    
    x (real) The x position to create the arm at
    
    y (real) The y position to create the arm at
    
    depth (real) The depth to assign the arm
    seg_length(real) The length of the individual segments. 
    WARNING values less than or equal to zero may yield unexpected
    results!
    
    segments(real) The amount of segments the arm will be split into. A segment
    is the line/sprite/distance between one joint and another.  
    WARNING values less than or equal to zero may yield unexpected
    results!
    
    
    speed
    (real) the max speed the arm can move each step. Set to -1 for 
    infinite (can be accessed like this: arm_id.arm_speed)
    
    targetOPTIONAL
    (real - Instance ID) The Instance that the arm will 
    follow, set to noone if you want to specify coordinates or you
    want to move it externally 
    (arm_id.target_x = 16, arm_id.target_y = 32)
    
    target_xOPTIONAL
    (real) The x position to move to if the target does not exist
    
    target_yOPTIONAL
    (real) The y position to move to if the target does not exist
    
    Returns: 
    real - Instance ID | The ID of the arm instance that have been 
    created
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    segment_functions;
    
    These are all the functions that deal with individual segments.
    
    
    seg_calculate();
    Description:
    Calculates the coordinates of a segment in relation to the 
    given coordinates. This function is the core of Inverse 
    Kinematics, it ALWAYS respects the length of each segment, 
    and rotates it to face the next segment.
    
    Arguments:
    
    seg 
    (integer) the index of the segment to calculate a new position for.
    
    x 
    (real) the x position to calculate against.
    
    y
    (real) the y position to calculate against.
    
    Returns: 
    N/A
    
    
    
    
    
    
    
    
    
    
    
    
    
    seg_draw();
    Description:
    Draws a generic segment. If the segment has a sprite, it's sprite
    will be drawn, if not, it will be drawn as a line.
    
    Arguments:
    seg 
    (integer) the index of the segment to calculate a new position for.
    
    x 
    (real) the x position to calculate against.
    y(real) the y position to calculate against.
    
    Returns: 
    N/A
    
    seg_apply_force();
    
    Description:
    applies a force to a segment. 
    
    Arguments:
    seg 
    (real) The index of the segment to apply the force to.
    force 
    (real) The force to apply (how many pixels to move).
    dir (angular degree) The direction of the force.
    
    Returns: 
    N/A
    
    
    
    seg_set_length();
    
    Description:
    Sets the length of a given segment. this function can be used to 
    change the length of a segment after it has been created. This 
    function also calculates the new arm_length for you.
    
    Arguments:
    seg (integer) The segment index to modify the length of.
    WARNING values less than zero or larger than seg_amount may
    yield unexpected results!
    
    length (real) The length of the whole arm. if the arm is fully stretched out, it
    will be this length, if you add together the length of every 
    segment, you will get this length.
    WARNING values less than or equal to zero may yield unexpected
    results!
    
    Returns: 
    real | segment lengths
    
    seg_get_angle();
    Description:
    Gets the angle of a given segment.
    
    Arguments:
    seg 
    (integer) The segment index to get the angle of.
    WARNING values less than zero or larger than or equal to 
    seg_amount may yield unexpected results!
    
    Returns: 
    angular degree | segment angle
    
     
    
    
    seg_delete();
    Description:
    Deletes a given segment.
    
    Arguments:
    seg 
    (integer) The segment index to delete.
    WARNING values less than zero or larger than seg_amount may 
    yield unexpected results!
    
    Returns: 
    angular degree | segment angle
    
    seg_insert();
    Description:
    Inserts a segment to the arm
    
    Arguments:
    seg 
    (integer) The segment index to insert at.
    WARNING values less than zero or larger than seg_amount may 
    yield unexpected results!
    
    len 
    (real) The length of the segment
    
    spr
    (real) The sprite to assign the segment. (set to noone if you want it
    to draw a line)
    
    Returns: 
    angular degree | segment angle
    
    
    
    
    seg_add();
    Description:
    Adds a segment to the end of the arm
    
    Arguments:
    len
    (real) The length of the segment
    
    spr
    (real) The sprite to assign the segment
    
    Returns: 
    Boolean | Returns whether a collision is found (true) or not (false)
    
    seg_meeting();
    Description:
    Checks for a collision between the specified segment and obj. If 
    the segment has a sprite assigned to it, this function will use 
    the mask of that sprite to check for collisions. If a segment does 
    not have a sprite assigned to it, this function will check for 
    collisions along a 1px wide line.
    
    Arguments:
    seg 
    (integer) The index of the segment to check for collisions
    
    obj 
    (real - Instance ID or object index) The object for instance to check 
    or collisions against
    
    Returns: 
    Boolean | Returns whether a collision is found (true) or not (false)
    
    
    
    
    
    seg_meeting_line();
    Description:
    Checks for a collision between the specified segment and obj.
    WARNING This uses one pixel large lines for collision checking,
    Use seg_meeting_mask() for accurate collsions when using 
    segments with sprites, or use seg_meeting() to use both
    
    Arguments:
    seg 
    (integer) The index of the segment to check for collisions
    
    obj 
    (real - Instance ID or object index) The object or instance to check 
    for collisions against
    
    Returns: 
    Boolean | Returns whether a collision is found (true) or not (false)
    
    
    
    seg_meeting_mask();
    Description:
    Checks for a collision between the specified segment and obj.
    WARNING This uses the mask of the sprite assigned to the 
    specified segment for collision checking,
    Use seg_meeting_line() for accurate collsions when only 
    drawing 1px wide lines, or use seg_meeting() to use both
    
    Arguments:
    
    seg 
    (integer) The index of the segment to check for collisions
    WARNING values less than zero or larger than seg_amount may
    yield unexpected results!
    
    obj 
    (real - Instance ID or object index) The object or instance to check 
    for collisions against
    
    Returns: 
    Boolean | Returns whether a collision is found (true) or not (false)
    variables;
    
    These are all the variables and functions initialized by 
    arm_initialize(). These variables are central to the extension,
    and modifying anything that is marked as [Read-only], is prone to cause
    all sorts of errors, some of which may not be immediately apparent.
    arm_length
    Description:
    The length of the whole arm. if the arm is fully stretched out, it
    will be this length, if you add together the length of every 
    segment, you will get this length.
    WARNING values less than or equal to zero will yield unexpected
    results!
    
    Datatype:
    (real) [Read-only] - modify witharm_set_length()
    
    arm_pinned
    Description:
    Whether the arm is pinned to it's x and y position (true)
    or not (false)
    
    Datatype:
    (bool)
    
    seg_amount
    Description:
    The amount of segments the arm is split up into.
    
    Datatype:
    (integer) [Read-only] - modify with arm_set_length()
    
    
    seg_x
    Description:
    The x position of a segment. to find the x position of the end
    of a segment, refer to the next index of seg_x
    
    Datatype:
    (array)
    
    seg_y
    
    Description:
    The y position of each segment. to find the y position of the end
    of a segment, refer to the next index of seg_y
    
    Datatype:
    (array)
    
    seg_len
    
    Description:
    The length of each segment
    
    Datatype:
    (array) [Read-only] - modify witharm_set_length()
    
    seg_spr
    
    Description:
    The sprite of each segment
    
    Datatype:
    (array)
    

# Import file "basic" (sizes and positions are scaled 1:4)
sketch = Framer.Importer.load("imported/basic@4x")

Utils.globalLayers(sketch)

Framer.Defaults.Animation = 
	curve: "spring(300,30,0)"
	time: 0.4

animal.states.add 
	0:
		midX: touch0.midX
		midY: touch0.midY
		opacity: 1.0
		scale: 1.0
		rotationZ: 0
		blur: 0
	
	1:
		midX: touch1.midX
		midY: touch1.midY
		opacity: 0.5
		scale: 1.0
		rotationZ: 0
		blur: 0
		
	2:
		midX: touch2.midX
		midY: touch2.midY
		opacity: 1.0
		scale: 0.3
		rotationZ: 0
		blur: 0
		
	3:
		midX: touch3.midX
		midY: touch3.midY
		opacity: 1.0
		scale: 1.0
		rotationZ: 360*3
		blur: 0
		
	4:
		midX: touch4.midX
		midY: touch3.midY
		opacity: 1.0
		scale: 1.0
		rotationZ: 0
		blur: 10

touch0.on Events.Click, ->
	animal.states.switch 0
	
touch1.on Events.Click, ->
	tip.visible = false
	animal.states.switch 1

touch2.on Events.Click, ->
	animal.states.switch 2

touch3.on Events.Click, ->
	animal.states.switch 3

touch4.on Events.Click, ->
	animal.states.switch 4

animal.draggable = true
animal.on Events.DragEnd, ->
	tip2.visible = false
	animal.states.switch 0
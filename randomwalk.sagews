︠13f66208-f534-4ced-bde3-6bfaf73e1d8fis︠
%html
<h1>Random Walk</h1>
<h3>Abdal Elhassani</h3>

<h4>3D Random Walk</h4>
<li>Succession of randomized steps on a three dimensional plane</li>
<li>Example such movements in real life are the movement of cells as they move in liquid, or the movement of aerosol particles in the air.</li>
<li>The three dimensions can represent the three space dimensions</li>

<h4>2D Random Walk</h4>
<li>Success of randomized steps on a two dimensional space</li>
<li>Example of such movement include the movement of stock prices over time. </li>
<li>The two dimensions can represent time on the x-axis and the value of interest on the y-axis.</li>




︡130d6720-6006-4443-92f9-b919d4365158︡{"html":"<h1>Random Walk</h1>\n<h3>Abdal Elhassani</h3>\n\n<h4>3D Random Walk</h4>\n<li>Succession of randomized steps on a three dimensional plane</li>\n<li>Example such movements in real life are the movement of cells as they move in liquid, or the movement of aerosol particles in the air.</li>\n<li>The three dimensions can represent the three space dimensions</li>\n\n<h4>2D Random Walk</h4>\n<li>Success of randomized steps on a two dimensional space</li>\n<li>Example of such movement include the movement of stock prices over time. </li>\n<li>The two dimensions can represent time on the x-axis and the value of interest on the y-axis.</li>\n\n\n\n\n"}︡
︠b7709202-9052-4b18-9977-8df681d3fb51s︠



v = [(0,0,0)]
for i in range(1000):
    v.append([a+random()-.5 for a in v[-1]])
line3d(v, color='red', thickness=3, spin=3)
︡4fe85b78-4aa3-4aa1-9bcc-f6ab275ff264︡{"file":{"uuid":"27756048-227b-4d82-adb5-68f4f86fb612","filename":"27756048-227b-4d82-adb5-68f4f86fb612.sage3d"}}︡{"html":"<div align='center'></div>"}︡
︠d1a4182a-94e2-4d0d-b61b-102998a8bf00︠
stats.TimeSeries(1000).randomize('normal').sums().plot()

︡2a280e30-f2e1-4926-a0e1-efec98b99bb8︡{"once":false,"file":{"show":true,"uuid":"923d1897-57de-4964-9fca-9ba71334c9d6","filename":"/projects/c40267ba-edc5-46dc-8856-f9c6ca29733f/.sage/temp/compute3-us/19519/tmp_eGLwTM.svg"}}︡{"html":"<div align='center'></div>"}︡
︠adc52f3d-b77d-48cc-9285-802c82a1b6e9︠

g = graphs.RandomGNM(15, 20)  # 15 vertices and 20 edges
show(g)
g.incidence_matrix()
︡85aedaa3-ce82-4a06-9233-03cc61390a07︡{"d3":{"viewer":"graph","data":{"link_distance":50,"link_strength":1,"links":[{"strength":0,"target":9,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":14,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":8,"color":"#aaa","curve":0,"source":1,"name":""},{"strength":0,"target":10,"color":"#aaa","curve":0,"source":1,"name":""},{"strength":0,"target":13,"color":"#aaa","curve":0,"source":1,"name":""},{"strength":0,"target":3,"color":"#aaa","curve":0,"source":2,"name":""},{"strength":0,"target":7,"color":"#aaa","curve":0,"source":2,"name":""},{"strength":0,"target":8,"color":"#aaa","curve":0,"source":2,"name":""},{"strength":0,"target":9,"color":"#aaa","curve":0,"source":2,"name":""},{"strength":0,"target":13,"color":"#aaa","curve":0,"source":2,"name":""},{"strength":0,"target":11,"color":"#aaa","curve":0,"source":3,"name":""},{"strength":0,"target":6,"color":"#aaa","curve":0,"source":4,"name":""},{"strength":0,"target":9,"color":"#aaa","curve":0,"source":4,"name":""},{"strength":0,"target":7,"color":"#aaa","curve":0,"source":5,"name":""},{"strength":0,"target":8,"color":"#aaa","curve":0,"source":5,"name":""},{"strength":0,"target":9,"color":"#aaa","curve":0,"source":5,"name":""},{"strength":0,"target":11,"color":"#aaa","curve":0,"source":5,"name":""},{"strength":0,"target":11,"color":"#aaa","curve":0,"source":9,"name":""},{"strength":0,"target":14,"color":"#aaa","curve":0,"source":10,"name":""},{"strength":0,"target":13,"color":"#aaa","curve":0,"source":12,"name":""}],"pos":[],"height":null,"edge_thickness":2,"loops":[],"edge_labels":false,"vertex_size":7,"vertex_labels":true,"directed":false,"gravity":0.04,"width":null,"charge":-120,"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"},{"group":"0","name":"3"},{"group":"0","name":"4"},{"group":"0","name":"5"},{"group":"0","name":"6"},{"group":"0","name":"7"},{"group":"0","name":"8"},{"group":"0","name":"9"},{"group":"0","name":"10"},{"group":"0","name":"11"},{"group":"0","name":"12"},{"group":"0","name":"13"},{"group":"0","name":"14"}]}}}︡{"html":"<div align='center'></div>"}︡{"stdout":"[-1 -1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0]\n[ 0  0 -1 -1 -1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0 -1 -1 -1 -1 -1  0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  1 -1  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0  0 -1 -1  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0  0  0  0 -1 -1 -1 -1  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0  0  0  1  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  1  0  0  0  0  0  0  0  1  0  0  0]\n[ 0  0  0  0  1  0  0  1  0  0  0  0  0  0  0  1  0  0  0  0]\n[ 0  1  0  0  0  0  1  0  0  0  0  1  0  0  1  0  0 -1  0  0]\n[ 0  0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0 -1  0]\n[ 0  0  0  0  0  0  0  0  0  0  1  0  0  1  0  0  0  1  0  0]\n[ 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0 -1]\n[ 0  0  1  0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  1]\n[ 1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  1  0]\n"}︡
︠a42f9161-48ef-4349-928c-a3382b658bcb︠




︡057104f8-9a1d-41f1-bc1b-ad642d686203︡
︠00a78e5f-8244-443d-a278-84dcd0c276eb︠










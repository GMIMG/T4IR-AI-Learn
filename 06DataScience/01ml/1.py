import pandas as pd
import numpy as np
##import matplotlib.pyplot as plt
##plt.style.use('ggplot')

# 불러오기
df = pd.read_json("./ny_apt_train.json")

# 위도 경도 0 처리
df[df['latitude'] == 0]
df1 = df[df.loc[:,'longitude'] != 0]
df2 = df1[df1['latitude'] != 0]

# interest 
df2['interest'] = np.where(df2['interest_level'] == 'low', 0,
                         np.where(df2['interest_level'] == 'medium', 1, 2))

# 
mean_latitude = df2.describe().loc['mean','latitude']
mean_longitude = df2.describe().loc['mean','longitude']

df2_low = df2[df2.interest == 0]
df2_mid = df2[df2.interest == 1]
df2_high = df2[df2.interest == 2]

df2_low_sample = df2_low.sample(frac=0.05)
df2_mid_sample = df2_mid.sample(frac=0.05)
df2_high_sample = df2_high.sample(frac=0.05)


import folium
# from folium.plugins import MarkerCluster

map_osm = folium.Map((mean_latitude, mean_longitude), zoom_start=15)

# mc = MarkerCluster()

for row in df2_low_sample.itertuples():
    map_osm.add_child(folium.Marker((row.latitude,  row.longitude),icon=folium.Icon(color='red')))

for row in df2_mid_sample.itertuples():
    map_osm.add_child(folium.Marker((row.latitude,  row.longitude),icon=folium.Icon(color='green')))

for row in df2_high_sample.itertuples():
    map_osm.add_child(folium.Marker((row.latitude,  row.longitude),icon=folium.Icon(color='blue')))




nysubway = pd.read_csv('DOITT_SUBWAY_STATION_01_13SEPT2010.csv')
long = []
lati = []
name = []
for i in range(len(nysubway)):
    long.append(list(map(float,nysubway['the_geom'][i][7:-1].split()))[0])
    lati.append(list(map(float,nysubway['the_geom'][i][7:-1].split()))[1])
    name.append(nysubway['NAME'][i])
NYS = pd.DataFrame({"NAME":name, "long":long,"lati":lati})


for row in NYS.itertuples():
    map_osm.add_child(folium.Marker((row.lati,  row.long),popup=row.NAME ,icon=folium.Icon(color='black')))



map_osm.save('map8.html')

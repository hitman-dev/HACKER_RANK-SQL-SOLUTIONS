SELECT Round(stn.lat_n, 4)
FROM station AS stn
WHERE (SELECT Count(lat_n) FROM station WHERE lat_n < stn.lat_n) = (SELECT Count(lat_n) FROM station WHERE lat_n > stn.lat_n);
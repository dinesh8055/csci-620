USE stock_data;

DROP TABLE IF EXISTS tindex_change;

CREATE TABLE tindex_change AS

(SELECT 
nk.percent_change AS nikkei,
inf.percent_change AS Inflation,
cc.percent_change AS Cac,
dx.percent_change AS Dax,
ex.percent_change AS Estx,
enx.percent_change AS Enxt,
h.percent_change AS Hang,
sx.percent_change AS Spasx,
st.percent_change AS Sti,
sp.percent_change AS SP

FROM
SP sp
INNER JOIN nikkei nk ON sp.date=nk.date 
INNER JOIN Inflation inf ON nk.date=inf.date 
INNER JOIN Cac cc ON inf.date=cc.date
INNER JOIN Dax dx ON cc.date=dx.date
INNER JOIN Estx ex ON dx.date=ex.date
INNER JOIN Enxt enx ON ex.date= enx.date
INNER JOIN Hang h ON enx.date=h.date 
INNER JOIN Spasx sx ON h.date=sx.date
INNER JOIN Sti st ON sx.date=st.date

ORDER BY sp.date DESC);



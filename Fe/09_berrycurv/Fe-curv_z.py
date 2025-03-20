import pylab as pl
import numpy as np
data = np.loadtxt('Fe-curv.dat')
x=data[:,0]
y=data[:,3]
tick_labels=[]
tick_locs=[]
tick_labels.append('$\Gamma$')
tick_locs.append(0)
tick_labels.append(' H'.strip())
tick_locs.append(    2.189269)
tick_labels.append(' P'.strip())
tick_locs.append(    4.085231)
tick_labels.append(' N'.strip())
tick_locs.append(    5.179866)
tick_labels.append('$\Gamma$')
tick_locs.append(    6.727912)
tick_labels.append(' H'.strip())
tick_locs.append(    8.917181)
tick_labels.append(' N'.strip())
tick_locs.append(   10.465228)
tick_labels.append('$\Gamma$')
tick_locs.append(   12.013275)
tick_labels.append(' P'.strip())
tick_locs.append(   13.909237)
tick_labels.append(' N'.strip())
tick_locs.append(   15.003872)
pl.plot(x,y,color='k')
pl.xlim([0,max(x)])
pl.ylim([min(y)-0.025*(max(y)-min(y)),max(y)+0.025*(max(y)-min(y))])
pl.xticks(tick_locs,tick_labels)
for n in range(1,len(tick_locs)):
   pl.plot([tick_locs[n],tick_locs[n]],[pl.ylim()[0],pl.ylim()[1]],color='gray',linestyle='-',linewidth=0.5)
pl.ylabel('$-\Omega_z(\mathbf{k})$  [ $\AA^2$ ]')
outfile = 'Fe-curv_z.pdf'
pl.savefig(outfile,bbox_inches='tight')
pl.show()

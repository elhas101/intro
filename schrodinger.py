import numpy as np
import matplotlib.pyplot as plt


class Schrodinger(object):
 import numpy as np
 # Schrodinger variables initiation
 def __init__(self, V, start=-1, end=1, npts=100, mass=1.0):
     import numpy as np
     self.m = mass ## mass variable
     self.n = npts ## npts variable
     self.x = np.linspace(start,end,npts) ## np linearly spaced vector
     self.dx = abs(self.x[1]-self.x[0]) ## derivative of the linearly spaced vector
     self.__init_laplacian__() ## init the laplacian function

     self.Vx = V(self.x) ## 
     self.H = (-0.5/self.m)*self.laplace + np.diag(self.Vx) ##  Laplace derivative 
     self.E = np.array([]) 
     self.psi = []

 def __init_laplacian__(self):
     M = -2*np.identity(self.n,'d')
     for i in xrange(1,self.n):
         M[i,i-1] = M[i-1,i] = 1
         self.laplace = M / self.dx**2 ## laplace var

 def diagonalize(self): ## get diagonal of the schrodinger function
     E,U = np.linalg.eigh(self.H) 
     psi = []
     for i, e in enumerate(E):
         psi.append(U[:,i]/np.sqrt(self.dx) + e)
         self.E = E
         self.psi = psi

 def plot_spectra(self,levels=3): ## plot function
     if not self.psi: return
     plt.plot(self.x, self.Vx ,color='k')
     for i in xrange(0,levels):
         plt.axhline(y=self.E[i],color='k',ls=":")
         plt.plot(self.x,self.psi[i])
         plt.title("Spectra and Eigenfunctions")
         plt.xlabel("Position")
         plt.ylabel("Energy")
  
  def wavefunction(self, s, f = lambda x : np.exp(- 100 * (x-1)**2 )):
    dt = s.dx
    now = f(s.x.astype(complex))
    while True:
        yield now
        now = now - dt*(1j)*np.dot(s.H, now)

  def wave_to_prob(self, a = np.array([])):
    p = (np.conjugate(a) * a).real
    return p / p.sum()

  def plot_prob(s, w):
    wp = wave_to_prob(w)
    plt.plot(s.x,wp)
    plt.title("Finite Differences of sin(x)")
    plt.xlabel("s.x")
    plt.ylabel("$\sin$, $d\sin/dx$, $d^2\!\sin/dx^2$")
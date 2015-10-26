import numpy as np
import matplotlib.pyplot as plt

class Schrodinger(object):

    def __init__(self, V, start=-1, end=1, npts=100, mass=1.0):
        self.m = mass
        self.n = npts
        self.x = np.linspace(start,end,npts) # creates the array for the stepping points with step size (end-start)/(npts-1)
        self.dx = abs(self.x[1]-self.x[0]) # the size of the step
        self.__init_laplacian__()
        
        self.Vx = V(self.x)
        self.H = (-0.5/self.m)*self.laplace + np.diag(self.Vx)
        self.E = np.array([]) # error constant numpy array
        self.psi = []
    
    def __init_laplacian__(self):
        M = -2*np.identity(self.n,'d')
        for i in xrange(1,self.n):
            M[i,i-1] = M[i-1,i] = 1
        self.laplace = M / self.dx**2
        
    def diagonalize(self):
        E,U = np.linalg.eigh(self.H) # Return the eigenvalues and eigenvectors of a H
        psi = []
        for i, e in enumerate(E):
            psi.append(U[:,i]/np.sqrt(self.dx) + e)
        self.E = E
        self.psi = psi
    
    def plot_spectra(self,levels=3):
        if not self.psi: return
        plt.plot(self.x, self.Vx ,color='k')
        for i in xrange(0,levels):
            plt.axhline(y=self.E[i],color='k',ls=":")
            plt.plot(self.x,self.psi[i])
        plt.title("Spectra and Eigenfunctions")
        plt.xlabel("Position")
        plt.ylabel("Energy")
    
def wavefunction(s, f = lambda x : np.exp(- 100 * (x-1)**2 )):
    dt = s.dx
    now = f(s.x.astype(complex))
    while True:
        yield now
        now = now - dt*(1j)*np.dot(s.H, now)

def wave_to_prob(a = np.array([])):
    p = (np.conjugate(a) * a).real
    return p / p.sum()

def plot_prob(s, w):
    wp = wave_to_prob(w)
    plt.plot(s.x,wp)
    plt.title("Schrodinger plot prob")
    plt.xlabel("s.x")
    plt.ylabel("wave_to_prob")

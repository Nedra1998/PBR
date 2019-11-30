import numpy as np

def main():
    r = 0.2
    print("spp,approx,error")
    for spp in range(1, 4096):
        avg = 0.0
        for i in range(spp):
            avg += 1.0 / spp if np.sqrt(np.random.rand()**2 + np.random.rand()**2) <= r else 0.0
        print("{},{},{}".format(spp, avg * 4, np.abs((avg * 4) - (np.pi * (r**2)))))

if __name__ == "__main__":
    main()

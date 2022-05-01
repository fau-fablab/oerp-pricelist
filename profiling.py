import time

class Profiler(object):
    stats = {}
    
    def __init__(self, name):
        self.name = name
        pass
    def __enter__(self):
        self.start = time.time()
    def __exit__(self, type, value, traceback):
        self.stop = time.time()
        Profiler.stats[self.name] = Profiler.stats.get(self.name, 0) + (self.stop - self.start)
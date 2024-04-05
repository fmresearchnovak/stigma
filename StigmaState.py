
import tempfile



class Environment:
    _temp_file = None
    _launcher_activities = [] # TO-DO: Implement this


    def __new__(cls):
        # https://www.geeksforgeeks.org/singleton-pattern-in-python-a-complete-guide/
        # Makes this class a singleton
        if not hasattr(cls, 'instance'):
            cls.instance = super(Environment, cls).__new__(cls)
            cls.instance._temp_file = tempfile.TemporaryDirectory(prefix="apkOutput_")

            #self._launcher_activities = []
            #self._start_of_method_handler = None
            #self._start_of_launcher_oncreate_method_handler = None
            #self._MAX_DESIRED_NUM_REGISTERS = 0
            #self._instrumentation_map = {}

        return cls.instance

    def get_temp_file(self):
        return self._temp_file
    
    def get_launcher_activities(self):
        return self._launcher_activities




__author__ = 'outcastgeek'

def includeme(config):
    config.scan(__name__)
    config.add_route('home', '/home')
    config.add_route('api', '/api')
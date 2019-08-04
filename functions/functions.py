import random, string, names

class functions():

    def strip_dollar_sign_return_float(self, input):
        '''Return price with out USD sign as a float'''
        stripped = (input[1:])
        output = (float(stripped))
        return output

    def generate_random_email(self):
        '''Generate a random email address'''
        domains = [".com", ".co.uk"]
        domain = (random.choice(domains))
        at = "@"
        user = ''.join([random.choice(string.ascii_letters) for n in range(10)])
        hosts = ["google", "gmail", "outlook", "yahoo", "hotmail"]
        host= (random.choice(hosts))
        output = (user + at + host + domain)
        return output

    def generate_random_male_name(self):
        '''Returns a random male first name'''
        output = names.get_first_name(gender='male')
        return output

    def generate_random_last_name(self):
        '''Returns a random last name'''
        output = names.get_last_name()
        return output
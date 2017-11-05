import subprocess
import argparse

def main(ip):
    process = subprocess.check_output("nmap {} -v3 -Pn -oX 'output.xml' -stylesheet stylesheet.xsl".format(ip), shell=True)
    subprocess.check_output("xsltproc output.xml -o output.html", shell=True)
    print("Scan outputted.")
    '''
    output = process.decode("utf-8").split('\n')[6:]
    for string in output:
        print(string)
    '''

if __name__=="__main__":
    parser = argparse.ArgumentParser(description='Nmap and Ip.')
    parser.add_argument('ip',  help='the ip to scan')
    args = parser.parse_args()
    main(args.ip)

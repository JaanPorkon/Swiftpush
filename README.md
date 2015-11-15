#Introduction

Welcome! Swift-push is a small tool written in Python that allows people to upload
files to their containers from CLI.

#Installation

```
git clone https://github.com/JaanPorkon/Swiftpush.git
cd Swiftpush
chmod o+x install.sh
./install.sh
```

#Usage

```
swiftpush -f <file> -p <path> -c <container>
```
* -f is a path to your file in your local system
* -p is a path to your new file in your Swift deployment
* -c is the name of your container

Example:
```
swiftpush -f /home/user/Pictures/openstack.png -p openstack.png -c Images
```

#Dependencies

* Python 2.7
* Requests (http://docs.python-requests.org/en/latest/)

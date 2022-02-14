## Welcome to MCD Unison - Covid-19 Hermosillo Data

You can use the [editor on GitHub](https://github.com/arielox5/MCD_Act2/edit/gh-pages/index.md) to maintain and preview the content for your website in Markdown files.

This is a page created for the purpose of learning in the course of "Productivity tool", where we use Docker, GitHub, bash, cvskit as tools for learn and make this project.
Here will show you how I get to obtain the data, step by step, you are allowed to use it using the dockerfile.


This result shows how many case are on Hermosillo.

### Creating docker file

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```Docker File
Save the next code on a file called DOCKERFILE

# Header 1
## Header 2
### Header 3

# Header 1
FROM ubuntu

workdir root/

RUN apt-get -y update && \
	apt-get install -yq nano curl unzip less pip tldr &&\
	lang=c.UTF-8 &&\
    pip install csvkit

copy scriptTest.sh /root

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [Basic writing and formatting syntax](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).

### Jekyll Themes

You will also need an scrpit

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://docs.github.com/categories/github-pages-basics/) or [contact support](https://support.github.com/contact) and we’ll help you sort it out.

TM353 IT systems: planning for success

Block 2
Creating conditions for success
in IT systems

This publication forms part of the Open University module TM353 IT systems: planning for success. Details of this and other
Open University modules can be obtained from Student Recruitment, The Open University, PO Box 197, Milton Keynes MK7
6BJ, United Kingdom (tel. +44 (0)300 303 5303; email general-enquiries@open.ac.uk).

Alternatively, you may visit the Open University website at www.open.ac.uk where you can learn more about the wide range
of modules and packs offered at all levels by The Open University.

To purchase a selection of Open University materials visit www.ouw.co.uk, or contact Open University Worldwide, Walton
Hall, Milton Keynes MK7 6AA, United Kingdom for a catalogue (tel. +44 (0) 1908 274066; fax +44 (0)1908 858787; email
ouw-customer-services@open.ac.uk).

The Open University, Walton Hall, Milton Keynes MK7 6AA

First published 2015. Second edition 2024.

Copyright © 2015, 2024 The Open University, all rights reserved.

All rights reserved. No part of this publication may be reproduced, stored in a retrieval system, transmitted or utilised in any
form or by any means, electronic, mechanical, photocopying, recording or otherwise, without written permission from the
publisher or a licence from The Copyright Licensing Agency Ltd. Details of such licences (for reprographic reproduction) may
be obtained from: The Copyright Licensing Agency Ltd, 1 St. Katharine’s Way, London, E1W 1UN (website www.cla.co.uk).

Open University materials may also be made available in electronic formats for use by students of the University. All rights,
including copyright and related rights and database rights, in electronic materials and their contents are owned by or licensed
to The Open University, or otherwise used by The Open University as permitted by applicable law.

In using electronic materials and their contents you agree that your use will be solely for the purposes of following an Open
University course of study or otherwise as licensed by The Open University or its assigns.

Except as permitted above you undertake not to copy, store in any medium (including electronic storage or use in a website),
distribute, transmit or retransmit, broadcast, modify or show in public such electronic materials in whole or in part without the
prior written consent of The Open University or in accordance with the Copyright, Designs and Patents Act 1988.

Edited and designed by The Open University.

Typeset by The Open University.

Printed in the United Kingdom by Halstan Printing Group, Amersham.

ISBN 978 1 4730 3927 8

2.1

Contents

Introduction to Block 2

Learning outcomes

Part 1 – Sociotechnical systems design

Introduction

1.1 Features of sociotechnical systems

1.2 Designing effective sociotechnical systems: examining the ETHICS
approach

1.3 Power in sociotechnical systems

1.4 Further power issues in sociotechnical systems

1.5 Case study: health care IT system

1.6 Summary

Answers to activities

References

Part 2 – Information technology systems methodology

Introduction

5

6

7

9

12

23

33

42

48

52

52

65

69

71

2.1 Methodology and IS methods: why are they important for IT success? 73

2.2 The history of the development of IS method

2.3 Method shift

2.4 What were the main features of IS methods in the four eras?

2.5 Review and reﬂection

2.6 Self-adaptive systems and Multiview

2.7 Agile methods

2.8 What happens when IS method is not ﬁt for purpose?

2.9 Where next for IS method?

2.10 Summary

Answers to activities

References

76

82

82

89

90

100

112

115

117

118

124

Part 3 – Designing dependable systems

Introduction

3.1 Dependability

3.2 Maths check

3.3 A brief introduction to security engineering

3.4 Probability, reliability and availability

3.5 Redundancy and diversity

3.6 Malicious attacks and security

3.7 Summary

Answers to activities

References

Acknowledgements

Module team

127

129

130

131

132

135

147

151

153

155

162

163

164

Introduction to Block 2

Welcome to Block 2 of TM353, Creating conditions for success in IT
systems. In Block 1, you learnt about the nature of IT systems, and what it
means for them to succeed or fail. In this block, you will extend this learning
to an understanding of how to create the conditions for successful IT systems.
The block is concerned with initial systems design to ensure that systems are
robust to future change. If Block 1 was about analysis, Block 2 is about
design and implementation.

Throughout Block 2, we continue with the basic argument of Block 1 – that
an IT system can only be successful if it is seen as a sociotechnical system,
composed of organisations and people just as much as technology.

As part of understanding how to design successful IT systems, you will learn:

. methods for sociotechnical systems design – how to analyse

sociotechnical systems, how to design them effectively, and the
importance of issues of power in ensuring that IT systems are successful
approaches to IT systems methodology − why methodology and methods
matter in the design of successful IT systems, and a variety of IT systems
methods that have been seen to be effective
how to ensure that IT systems are dependable and reliable through an
understanding of the nature of risk, probability and reliability, and through
the importance of a sociotechnical approach to IT security
the importance of privacy as part of IT security, and why it matters to IT
systems success (viewed both as a user and a designer) that personal data
is private
the crucial role of legal, social, ethical and professional issues in ensuring
IT systems success, focusing especially on professionalism and ethics.

.

.

.

.

The block thus takes you from design and methodology, through security and
privacy, to professional ethics. Each of these topics is crucial in the design of
successful IT systems.

This block consists of three printed Parts (which are in this book), and two
online Parts (which can be found through the module website). Each of the
printed Parts is also supported by a variety of online activities and third-party
readings (also on the module website).

A special feature of this block is the use of extensive audio interviews,
especially produced for this module, in two of the Parts. In Part 2 (on IT
systems methodology) you will hear from expert practitioners in these
methodologies. In Part 4 (on security and privacy) you will hear from experts
in the ﬁeld of online privacy.

As with Block 1, this block ends with a tutor-marked assignment which
draws together the ideas and tools you will learn about in the block. We hope
you ﬁnd Block 2 interesting and useful in your design, management or
understanding of successful IT systems.

Introduction to Block 2

5

Creating conditions for success in IT systems

Learning outcomes
Your study of Block 2 will contribute to your ability to meet the following
module learning outcomes:

Knowledge and understanding:

.

.

.

1.2 The sociotechnical nature of IT systems, in that they incorporate
hardware, software, organisational, social and human components
1.3 The legal, social, ethical and professional contexts in which IT
systems are acquired, developed and deployed
1.4 Concepts and techniques for the project management, maintenance and
evolution of IT systems.

Cognitive skills:

.

.

.

.

2.1 Analyse IT systems in their wider sociotechnical context, including
trends in their environment
2.2 Identify different types of stakeholders and apply techniques to elicit
the main interactions of stakeholders with systems
2.3 Be able to extract useful information from highly technical documents,
including journal articles, product information and websites
2.4 Investigate, analyse, think critically, evaluate and synthesise
information from appropriate sources.

Key skills:

.

.

.

3.1 Be able to learn independently from third-party materials
3.2 Learn in familiar and unfamiliar situations and translate that
knowledge to other situations
3.4 Work independently, reﬂecting on own actions and thoughts, and
making effective use of constructive feedback.

Practical and/or professional skills:

.

.

.

4.1 Be able to analyse the professional/ethical issues involved in the
development and use of IT systems
4.2 Show a detailed knowledge of the importance and application of
analysis and design issues to businesses and society
4.4 Work with effective IT development and project management
methodologies.

6

Part 1 – Sociotechnical systems
design

Magnus Ramage, Mustafa Ali and Steve Walker, with contributions
from Ivan Horrocks

Part 1 – Sociotechnical systems design

Part 1 – Sociotechnical systems design

Introduction
You met the basic concept of a sociotechnical system in Block 1, with its
blend of technical, human and organisational components, along with the
claim that all IT systems are sociotechnical in their nature. But how do we
explore the elements of a sociotechnical IT system? How do we design one
so that it is effective? And how do we account for issues of power that
inevitably arise within the organisational and human aspects of sociotechnical
systems? This Part is concerned with the exploration of all these aspects of
sociotechnical systems design in further detail, and it also considers brieﬂy
the history of sociotechnical systems design so you can see where the ideas
have their origins.

To start your consideration of the block, read the case study in Box 1.1.

Box 1.1: How IT changed while building the Elizabeth
Line

Tom Allen
Over 12 years, IT at the project formerly known as Crossrail went from
cables and servers to cloud and wearables. Richard Blanford, CEO at
project MSP Fordway, explains how that changed the workﬂow.
Building the Elizabeth Line was one of the largest feats of engineering
ever to take place in a modern city. Thirteen miles of tunnel and 7
million tons of earth were excavated from beneath London over more
than a decade. It was complex, wide-ranging and mobile – and it needed
IT to match.

Managing the site was a project like no other, says Richard Blanford,
CEO of Fordway, the company responsible for delivering infrastructure
across the project for more than 10 years. ‘Our contract was to cover the
consortium that did pretty much all the western side of Crossrail. So
that was the western tunnels, Paddington, Russell Square; in fact,
everything up to and including Finsbury and Farringdon, which was
effectively where the two tunnelling machines met […] Our IT
supported the building and facilitation of all that side of the Crossrail
project.’

Full speed ahead
At the peak, Fordway was supporting about 1,300 IT users: a
combination of staff from each of the three main consortium members
(BAM Nuttall, Ferrovial and Kier), plus specialist subcontractors. In this
context, ‘support’ means a bit more than, ‘Here’s a laptop’. ‘We had
about 40 different ofﬁce location moves throughout the project, where
we literally picked up the entire administration of the project and moved
it to different places.’

9

Part 1 – Sociotechnical systems design

10

[ … ]

‘Making sure the machines kept moving forward – at between 20 and 40
yards a day – was obviously crucial to a project that amounted to one
long tunnel, but Fordway had plenty more going on at the same time.
The company delivered everything from standard ofﬁce automation to
building information management systems, 3D modelling capabilities,
wireless networks and 24/7 support, plus looking after all the equipment
on-site: equipment that became more complex as time went on.’

Nothing is permanent – except change
‘If you consider the start of the project [in 2010], the iPad was almost
brand new and shiny, and no one’s ever heard of it. By the end of the
project, everybody was wandering around with a smart tablet, sensors,
wearable devices, even body cams in certain circumstances. So we had
to evolve the technology through the life of the project to cope with all
the elements that started coming in.’

Fordway had to allow for the inevitable technology changes and
upgrades through the life of the contract. The company held monthly
service reviews with the consortium members, as well as quarterly
relationship reviews and biannual strategy reviews. Stakeholders could
review new tech and requirements at any of these.

Ultimately, one of the biggest and most interesting challenges came in
the amount of embedded and wearable technology that began to appear
on-site in the latter half of the contract. Fordway had to work out how
to integrate and monitor these devices almost in real-time.

‘It was very much as new bits [of the project] opened up, new
technology kept being thrown at us and saying, “We’ve got to be able to
incorporate this, we’ve got to be able to incorporate that, how do we
look after that, how do you suggest we do this?”’

Key to connecting these devices were reliable, scalable wireless
networks. At the project’s launch connectivity had mostly been through
ethernet cables to desktops, but by the end of the ﬁrst device refresh
cycle the IT mobility needed had convinced Fordway to move entirely
to wireless and laptops.

‘Wireless became the predominant connectivity in probably about 2015
or 2016. We stopped putting cables into new ofﬁces, we just put
wireless overlays in everywhere. We got a comms into the ofﬁce, and
then we always had 4G and bonded 4G as the absolute Get Out of Jail
Free card. If we could do nothing else, we put a 4G SIM into something
if we needed to talk to it.’

Fordway upgraded the wireless network at least three times and had to
install special antennae to get it working properly in some areas. Of
course, being in (technically beneath) central London made 4G a
convenient tool, but even that wasn’t always viable: the heavy plant
machinery and metres of packed soil, clay and chalk often blocked
signals, so as a worst case answer the company made sure devices could

work ofﬂine and upload data when staff got back to a reliable
connection.

Transformational clouds
New versions of Windows and changing hardware were expected:
technology always evolves over time. But there was one massive step-
change that would rewrite how enterprise tech worked forever.

‘Historically [in these types of contracts], one of the partners has
generally provided the IT and the IT service in the consortium […] We
said, frankly, that doesn’t make an awful lot of sense, because in this
world of cloud computing and cloud services, you don’t have to do that;
we can create dedicated environments for projects, which mean you
don’t have to have servers on-site, for example.

‘Building sites and construction sites are notoriously insecure
environments. People walk in and nick heavy plant, computers, you
name it, anything that isn’t nailed down. Site staff generally aren’t the
most considerate and you don’t have beautiful, air-conditioned
datacentres and stuff.’

The cloud meant massive changes for Crossrail, but all for the better.
Not only did changing to off-site servers mean fewer concerns about
theft and damage; but moving locations, while still irritating, was not
the complex, overwhelming, time-consuming headache that it would
have been in the mid-2000s.

The end of the (Elizabeth) Line
After 12 years, Fordway – along with the other contractors, consortium
members and partners who worked on it–celebr ated the opening of the
Elizabeth Line this May, but had been winding down its involvement
before that.

‘The main construction work for us really ﬁnished in about 2018/2019,
and that’s when the numbers went down quite substantially […] The
building stuff, the heavy stuff, the concrete pouring and steel ﬁxing and
all that had been done. It was much more the technical people, the
railway people, the signalling people who were coming in, but there
were small numbers of them and most of them came with their own
tech, so they weren’t so much part of the construction side; they were
the specialist contractors.

‘We supplied IT for the guys who laid the tracks, but when the
signalling contract came in that wasn’t inside the scope of what we were
asked to do, because they had their own specialist services. They just
had to have an email account and the ability to communicate with the
project.’

From a peak of 1,300 users, Fordway is now supporting just 40, and the
end of the project is in sight. Blanford and his team are preparing to
hand a copy of the data they’ve collected over the last decade – about
15 terabytes – to each member of the BAM/Ferrovial/Kier consortium.
Even that will be easier than it would have been in 2010.

Part 1 – Sociotechnical systems design

11

Part 1 – Sociotechnical systems design

‘When we archived one of the older early projects, we would get some
big, portable hard drives and copy the data onto that. These days, we
just copy it up to a bit of cloud storage.

‘I think that’s one of the key things that technology has created: it’s
much simpler to get things moving fast now, with templates,
standardisation, readily available cloud resources that you literally just
enable; whereas that capability didn’t exist back in 2010. We literally
had to carve it out.’

(Source: Allen, 2022)

Activity 1.1 (self-assessment)

10 minutes
You will be using this case study later in Part 1. Start by making brief notes
on the main factors that made the evolving use of IT within Crossrail
(Box 1.1) a success, drawing upon the understanding of success that you
learnt about in Block 1.

1.1 Features of sociotechnical systems
1.1.1 Mapping out elements of a sociotechnical system
To be able to make sense of the nature of a sociotechnical system, it is
important to have some understanding of the key components involved in it.
You have already met basic tools for mapping out systems and their
relationships, such as systems maps and inﬂuence diagrams. These tools can
often be a very useful way of mapping the components of a sociotechnical
system, as long as you are careful to identify both technical and non-
technical components throughout the system.

In Block 1 Part 1, you also encountered a simple framework for these
components, involving technology, organisations and people, which we shall
refer to as the T-O-P framework (see Figure 1.1):

12

Part 1 – Sociotechnical systems design

Technology

Organisation

People

Figure 1.1 T-O-P, a simple framework of the components of a sociotechnical IT
system

Although simple, this framework can readily be argued to include the major
components of a sociotechnical system. It makes the clear point (as argued in
Block 1) that an IT system does not just consist of technology, but contains
much else. Using this framework will help you to identify the main
components of an IT system. You will need to populate the ‘blobs’ which
represent each component – not just organisation in general, but the speciﬁc
organisation or organisations involved in this system (and similarly for
technology and people).

Peter Checkland and Sue Holwell, who have written extensively on systems
in general and IT systems in particular, described these three components in
greater detail (they refer to‘ agents’ rather than ‘people’ but the idea is the
same):

These are, ﬁrst of all, the people, the human agents (A) who interact to
create the wholly or partially shared meanings which make sense of their
world to individuals and to various groupings of individuals. These
interactions take place via various forms of organization (O). These may be
represented in a real instance by typical structures of the kind found within
organizations, such as departments, divisions, project teams, etc; but they
may also include any organized pattern of tasks, communications, reporting,
etc. In fact, this element of organization represents, in general, any
structured pattern of interaction which involves the agents. Thirdly […]
technology (T) by means of which informational support may be provided.
This might, in a real situation, be represented by telephones, teleprinters,
hand-written messages and maps […] nowadays it will almost always
include computers and telecommunications systems.

(Checkland and Holwell, 1998, p. 232)

This quote brings out two important features of the components in the T-O-P
framework. First, although the term ‘organisation’ refers in the ﬁrst place to
a speciﬁc organisation where the technology is located to form the IT system,
it can also refer to the more abstract concept of organisation, the means by
which activities are organised. Second, technology in this framework will

13

Part 1 – Sociotechnical systems design

certainly be an information technology (as we are dealing with IT systems)
which in the modern world usually includes some kind of computer, but it
needn’t necessarily do so. In their book Checkland and Holwell present an
analysis of the use of radar by the UK military during the Second World War,
which was clearly an IT system but not one involving computers.

Activity 1.2 (exploratory)

20 minutes
Consider the Crossrail IT system described in Box 1.1 (or, if you prefer, an
IT system known personally to you), and analyse it as a sociotechnical
system using the two following approaches:

(a) Draw a systems map of the main elements of the system described in the

case study (or your own).

(b) Taking your systems map as a starting point, draw a diagram like that in
Figure 1.1, showing the three components of Technology, Organisation
and People with appropriate substructure.

On the face of it the T-O-P framework may seem rather simplistic, although
in our view it is a good starting point for analysing the nature of an IT
system. It is also possible to use this framework in quite a sophisticated way.
Ian Mitroff and Harold Linstone, who have written at length on systems
thinking, use an expanded version of T-O-P, justiﬁed with considerable
philosophical rigour, under the name of ‘Unbounded Systems Thinking’
(Mitroff and Linstone, 1993) – an approach which does not speciﬁcally refer
to an IT system but could certainly be used with such a system. Mitroff and
Linstone refer to the three components as ‘perspectives’, and argue that all
three must be understood to look properly at the nature of a system: ‘its use
is not a luxury. All complex problems – especially social ones – involve a
multiplicity of actors, various scientiﬁc/technical disciplines, and various
organizations and diverse individuals’ (Mitroff and Linstone, 1993, p. 99). In
their book, they present a very detailed analysis of the terrible chemical
accident (and subsequent deaths and injuries) in Bhopal, India in 1984. They
look in turn at the T, O and P aspects of the accident and its aftermath, and
the way in which the three perspectives were closely connected. They
observe that:

The complex and close intertwining of human and technical factors in most
systems reveal the shortcomings of analyses based solely on the T
perspective. Many of the causal factors in Bhopal involved ‘human error’.
These include the use of the cast iron pipes instead of speciﬁed stainless
steel pipes; removal of refrigerant from the MIC tank [methyl isocyanate, a
highly toxic gas] despite instructions to the contrary in the safety manuals;
the failure to recognize the entry of water in the MIC tank; the failure to
sound adequate warnings to the surrounding area for over three hours after

14

Part 1 – Sociotechnical systems design

the leak began. There is a striking similarity in this respect to [the nuclear
reactor disasters at] Three Mile Island and Chernobyl.

(Mitroff and Linstone, 1993, pp. 116–117)

Checkland and Holwell (1998) also argue that in addition to the three
components of T-O-P (which in their terminology are Organisation, Agents
and Technology (O,A,T)), to make sense of their relationship we must look at
a process they call ‘conceptualizing’ (C): ‘consciously thinking about O, A, T
and their links in a particular example of [IT systems] work’ (pp. 232–233),
and they therefore refer to the COAT framework. They go on to say that this
approach:

draws attention, in element C, to the need for that thinking to be done, and
done consciously. The speciﬁc content of C will be different in different
cases. In particular cases, depending on context, it might entail, say,
bringing to bear the current ideas about ‘virtual organizations’, or the ideas
of Habermas, or the latest ideas stemming from work on neural networks.
The speciﬁc content of C will change with context; but for [IT systems] in
general we can be sure that O, A, T and their mutual relationships will be
relevant.

(Checkland and Holwell, 1998, p. 233)

This way of describing the conceptualising element may sound very abstract.
However it refers to a deeply important idea: the way in which we look at the
world. This changes a lot from one person or group to another, and is
affected by time and place among other aspects. How you understand the
world – the lenses through which you view it – affects all the things you see
in the world. We will not dwell on the idea of conceptualising much, but it is
an idea that is both profound and important.

Another extended version of the T-O-P framework was created by Rose
Challenger and Chris Clegg (2011), initially for the analysis of crowd
disasters such as that at the Hillsborough Football Stadium in 1989 but with
much wider applicability. In later work with other colleagues (Davis et
al., 2014), they applied it to retrospective analyses of environmental
sustainability at a manufacturing plant, as well as the London 2012 Olympics
and the NHS Programme for IT.

The model has six elements, all interconnected to each other, as shown in
Figure 1.2.

The version in Figure 1.2 has the components ofTe chnology and People, but
the Organisation component is expanded into three parts:

. Processes/procedures: the ways in which the organisation plans its routine
activities, to systematise and standardise tasks which happen again and
again (along, hopefully, with ways to capture changes to those tasks)
. Goals – the organisation’s reasons for being and plans for the future, both

short-term and long-term

. Culture – the feel of the organisation, the many intangible ways in which

it distinguishes itself as a place to work.

15

Part 1 – Sociotechnical systems design

Goals

People

Processes/
procedures

Buildings/
infrastructure

Culture

Technology

Figure 1.2 An organisationally focused framework for a sociotechnical IT system
(from Challenger and Clegg, 2011, p. 345)

In addition, a new component is introduced (Buildings/infrastructure) which
is especially important in analysing the crowd disasters discussed in
Challenger and Clegg’s article, but for our purposes can be taken to refer to
all sorts of infrastructure relevant to an IT system.

Challenger and Clegg (2011) argue that these six components ‘should all be
viewed as interdependent and given joint consideration’ and that ‘it is
inevitable that changes to one part of a system will necessitate subsequent
changes to other parts; thereby, to optimise success, the system should be
considered holistically’ (p. 345). The framework, in the way we have
described it above, forms a useful extended way of mapping out the key
elements of an IT system. As they later observed:

Our argument is that it is possible to use socio-technical frameworks to
engage in predictive work and thereby to make substantial contributions to
the design and management of major projects. For example, we did not
need the National Programme for IT (NPfIT) in the NHS to go wrong
before we could offer views, understanding and advice. The same argument
holds, at least in principle, to other systems in other domains.

(Davis et al., 2014, p. 175)

16

Part 1 – Sociotechnical systems design

Activity 1.3 (exploratory)

20 minutes
Taking the IT system that you considered in Activity 1.2 (i.e. either the
example from Box 1.1 or a system known to you), map out its elements
using the framework found in Figure 1.2. You need not necessarily use the
diagram in Figure 1.2, but should analyse your system according to the six
elements used in the framework (Technology, People, Processes/procedures,
Goals, Culture, Buildings/infrastructure).

Activity 1.4 (self-assessment)

10 minutes
In this section you have met, in more or less detail, four approaches to
modelling sociotechnical systems (the basic T-O-P framework, Mitroff &
Linstone’s extended version, the COAT framework, and the six-element
framework). Which seems most useful to you and why?

1.1.2 A brief history of sociotechnical systems design
As this Part is focused around sociotechnical systems design (STSD), we will
now look at the history of that approach in a little detail. This is important
not for historic interest, but because the methods and ideas developed in more
than half a century still have important lessons for today.

STSD has a history going back to the 1950s, and has been prominent in a
number of European countries, along with North America and Australia.

It was started by Eric Trist at the Tavistock Institute of Human Relations in
London, initially through a study of coal mining. The Tavistock Institute
arose in the immediate aftermath of the Second World War, following the
involvement of a group of psychoanalysts and social psychologists in a range
of wartime projects around group dynamics and effective group behaviour.
Initially funded through medical budgets, by the late 1940s the Institute was
increasingly looking towards industrial consultancy and had a series of
industrial research fellows. One of these was a former coal miner, Kenneth
Bamforth, who in 1949 returned to his former mining area in South Yorkshire
and discovered an innovation in working practices in a particular colliery,
Haigh Moor, which excited him greatly (Trist, 1981).

At the time, coal mining was still one of the most important parts of British
industry, forming the foundation for all other heavy industries. The mining
industry had been changed greatly by the introduction of longwall mining –
the extraction of coal along a ‘long wall’ of coal. This had led to the
introduction of more complicated machinery and also to much greater
specialisation of roles (like a production line in a factory). The innovation at
Haigh Moor was the introduction of smaller autonomous working groups,
with individuals responsible for a range of tasks and the group as a whole
being able to decide many things for itself. The results were very positive:

17

Part 1 – Sociotechnical systems design

Cooperation between task groups was everywhere in evidence, personal
commitment obvious, absenteeism low, accidents infrequent, productivity
high. The contrast was large between the atmosphere and arrangements on
these faces and those in the conventional areas of the pit, where the
negative features characteristic of the industry were glaringly apparent.

(Trist, 1981, p. 21)

Importantly, these characteristics were enabled by technology – greater and
more effective mechanisation. Bamforth returned to London to describe this
experience to Trist, who in turn went to Haigh Moor to see it himself. As he
later recounted, ‘I went up with him to Yorkshire, went down the mine, and
came up a different man’ (Fox, 1990, p. 260). Ironically, the National Coal
Board refused Trist and Bamforth permission to publish details of the
autonomous work groups at Haigh Moor.

However, Trist and his colleagues at the Institute were able to advance the
nascent work on sociotechnical systems in both theory and in practice. The
theory came through a combination of the general systems theory of Ludwig
von Bertalanffy (1950), especially his work on open systems, with work on
group dynamics by the psychologists Kurt Lewin and Wilfred Bion. These
led Trist and his collaborator, Fred Emery, to formulate a theory that would
enable ‘the joint optimization of the social and technical systems’ (Emery,
cited in Trist, 1981, p. 37). Emery and Trist wrote about the relationship
between social and technical systems, using the language of general systems
theory, in the following way:

[T]he technological component, in converting inputs into outputs, plays a
major role in determining the self-regulating properties of an enterprise. It
functions as one of the major boundary conditions of the social system of
the enterprise in thus mediating between the ends of an enterprise and the
external environment. Because of this the materials, machines, and territory
that go to making up the technological component are usually deﬁned, in
any modern society, as ‘belonging’ to an enterprise and excluded from
similar control by other enterprises. They represent, as it were, an
‘internalized environment.’

Thus the mediating boundary conditions must be represented amongst ‘the
open system constants’ (cf. von Bertalanffy, 1950) that deﬁne the conditions
under which a steady state can be achieved. The technological component
has been found to play a key mediating role and hence it follows that the
open system concept must be referred to the socio-technical system, not
simply to the social system of an enterprise.

(Emery and Trist, 1973, p. 214)

From this early history, the concept of STSD spread widely, initially through
work of the Tavistock Institute and their academic and industrial collaborators
in several countries. The Tavistock Institute, funded largely through industrial
consultancy, was academically committed to the concept of ‘action research’,
research aimed at improving practice as well as developing theory through
experience in real-world settings, an idea coined by the social psychologist
Kurt Lewin who was involved in the foundation of the Tavistock Institute.

18

Part 1 – Sociotechnical systems design

The focus on action research and the funding model – both of which are now
commonplace for organisational research but were then rare – led to the
Institute’s ideas being widely spread. This especially happened in Norway
where they formed an important part of the development of ‘industrial
democracy’ which became a legal requirement in that country, and later also
in Sweden. In the United States of America of the late 1960s and early
1970s, the term industrial democracy was considered suspect and so the term
‘quality of working life’ was adopted instead – but again with the
consideration that autonomous working groups were crucial and the
combination between social and technical systems was extremely important.

The sociotechnical approach was used to design effective working conditions
in a range of organisations across many countries over the following decades.
Although the work stressed the joint design of social and technical systems, it
tended to be led by social psychologists and organisational theorists who
carefully designed the social systems (the ways of working) while taking into
account technical systems that changed in their own regard. This approach to
sociotechnical systems was summarised by Cherns (1976), who developed
nine principles of sociotechnical design:

1 Compatibility: ‘the process of design must be compatible with its

objectives […] if the objective of design is a system capable of self-
modiﬁcation, of adapting to change, and of making the most use of the
creative capacities of the individual, then a constructively participative
organization is needed.’ (p. 785)

2 Minimum critical speciﬁcation: ‘no more should be speciﬁed than is

absolutely essential […] while it may be necessary to be quite precise
about what has to be done, it is rarely necessary to be precise about how
it is to be done.’ (p. 786)

3 The sociotechnical criterion: ‘variances [any unprogrammed events], if
they cannot be eliminated, must be controlled as near to their point of
origin as possible.’ (p. 787, adapted)

4 The multifunctional principle – organism vs mechanism: ‘if the

environmental demands vary, [it] then becomes more adaptive and less
wasteful for each element to possess more than one function.’ (p. 788)
5 Boundary location: ‘under favourable circumstances, working groups can
acquire and handle a greater degree of autonomy and learn to manage
their own boundaries.’ (p. 789)

6 Information ﬂow: ‘information systems should be designed to provide

information in the ﬁrst place to the point where action on the basis of it
will be needed.’ (p. 789)

7 Support congruence: ‘the systems of social support should be designed so
as to reinforce the behaviours which the organization structure is designed
to elicit.’ (p. 790)

8 Design and human values: ‘an objective of organizational design should

be to provide a high quality of work.’ (p. 790)

9 Incompletion: ‘design is a reiterative process. […] As soon as design is
implemented, its consequences indicate the need for redesign.’ (p. 791)

19

Part 1 – Sociotechnical systems design

Cherns’ principles served as a summary of sociotechnical design for a
generation. They were subsequently updated by Clegg (2000) whose
understanding of STSD can be understood in his ﬁrst principle that ‘design is
systemic: a sociotechnical perspective explicitly embraces the idea that all
aspects of a system are interconnected, that none should take logical
precedence over the other, and that they should be designed jointly’ (p. 465).

Our discussion so far of the history of STSD has largely focused on
organisational systems. However, the techniques were taken up within the
design of IT systems from the mid-1960s onwards. Some of this work again
took place in Scandinavia under the Tavistock Institute inﬂuence: the
Norwegian IT researcher Kristen Nygaard led an ‘Iron and Metal Workers
project’ from 1971 to 1973 as part of the movement towards industrial
democracy, which led to much further work that eventually came to be
known as ‘co-operative design’ (Hirschheim and Klein, 1994). The
Scandinavian IT projects would eventually part with the sociotechnical
approach over a perception that it dealt too weakly with power issues in the
workplace, an ongoing criticism of sociotechnical systems that we will
discuss later in this Part.

Within a British and US context, a key ﬁgure in the use of sociotechnical
design for IT systems was Enid Mumford, who joined the Manchester
Business School at its foundation in 1965 and was based there for the rest of
her life. The bulk of her research studied the impact of computers on working
life, and she was strongly inﬂuenced by the Tavistock Institute. A notable
commercial success was in her consultancy to the Digital Equipment
Company in shaping an expert system for sales staff, XSEL using
sociotechnical systems design: ‘at its peak the family of expert systems,
including XSEL, that were being used to support conﬁguration and location
of DEC-VAX computers was claimed to be saving the company tens of
millions of dollars’ (Baxter and Sommerville, 2011, p. 6). Enid Mumford’s
work coalesced into a method for sociotechnical systems design, ETHICS
(Mumford, 1995), which you will encounter in detail in the next section of
this Part.

Mumford was by no means the sole researcher in British or American work
on IT systems who was inﬂuenced by sociotechnical systems design. Many
others took inspiration from this approach, and a broadly sociotechnical
approach can be found in many studies of information systems within
organisations, although they are not always labelled as such (Avgerou,
Ciborra and Land, 2004). Two particularly interesting ﬁgures in this regard
included Ken Eason in the UK and Calvin Pava in the USA.

Eason (who we quoted in Block 1) has worked for more than 40 years in
human-centred approaches to information systems in organisations, and has
been strongly inﬂuenced by the sociotechnical approach, writing that ‘of all
the systems approaches that are available I have found sociotechnical systems
theory the most powerful way of explaining systems behaviour and the most
useful in designing new systems’ (Eason 2014, p. 213). His book on IT
systems and organisational change was widely inﬂuential (Eason, 1988); later
he produced an analysis of the highly problematic NHS National Programme

20

Part 1 – Sociotechnical systems design

for IT (Eason, 2007) arguing that its shortcomings arose because of its lack
of sociotechnical awareness.

Pava (1986) wrote at a time when routinised tasks in a production line or
factory were becoming increasingly replaced (at least in Western countries)
by non-linear ofﬁce-based work, those characterised by ‘unprogrammed tasks
such as diagnosing intricate system malfunctions, making decisions on
investments or purchases, deﬁning new products, and formulating general
strategies’ (p. 204). He argued that ‘applications of [sociotechnical systems]
design in settings that do not resemble factories tend to fail’ (p. 202), but that
sociotechnical design ‘offers a way of viewing phenomena from a different
angle, of enabling self-designed improvements to match organizations with
their technology in a dynamic environment’ (p. 219). In many ways this is an
updated version, for Pava’s time, of the original sociotechnical principles of
self-managed teams and joint optimisation of social and technological factors.
Pava sought to establish a form of sociotechnical design which could cope
with this changing environment of non-routinised work – a working style that
in the 1980s was mainly found in professional, high-status roles, but is now
widely found throughout ofﬁce-based work, even in low-status roles, in ways
that are not always positive. Unfortunately, Pava’s premature death meant that
this approach has not been widely taken up by others, although Wastell
(2011, p. 82) describes it as having ‘some particularly striking and genuinely
innovative features’, and it certainly has relevance today.

Sociotechnical approaches in general went into a certain decline in the 1980s
and 1990s (the time when Pava was writing) when the managerial climate
became more focused on maximising shareholder returns than on effective
job design – this was a period of centre-right governments in many countries
with a deregulation of stock markets, privatisation of nationalised industries
and a signiﬁcant shift in the UK and USA from manufacturing industries to
service and ﬁnancial sectors. In IT systems this was reﬂected by the growth
of approaches such as business process re-engineering, which in the 1990s
was viewed as a considerable threat by the sociotechnical community as it
also sought to redesign work processes through the use of information
technology, but with a much harder-edged, managerialist approach. Galliers
and Swan (1999) provide a thoughtful critique of business process re-
engineering as a management fad, and the extent to which it ﬁtted into other
trends in information systems. They argue that:

There is clearly a great deal of common sense associated with a technology
that does not fall into the trap of computerising ‘what is’, when ‘what is’ is,
in some way or another, inadequate […]. What we have attempted to do is
to highlight the more facile and misleading aspects of the BPR message.
[…] All too often, in IS at least, we have been prone to adopting the latest
fad, with little thought being given to existing knowledge […] The role of
IS in strategic change is far too important a topic to be treated in the
superﬁcial manner to which it has been subject for the most part.

(Galliers and Swan, 1999, pp. 380–381)

Since the start of the twenty-ﬁrst century, sociotechnical systems design has
re-emerged within an IT systems context – in the UK especially through the

21

Part 1 – Sociotechnical systems design

inﬂuence of the British Computer Society’s sociotechnical group which has
become very active. Much of their work was summarised under the label of
‘the new sociotech’ (Coakes, Willis and Lloyd-Jones, 2000), 50 years after
the original Tavistock Institute studies. An important ﬁgure in this work was
the late Chris Clegg who led the team at the Socio-Technical Centre at Leeds
University looking at systems design (whose work we have seen above), and
who argued, with his colleagues, that:

The emergence of explicit socio-technical thinking within the initial design
stages of IT would also help counter one of the prevailing criticisms of
socio-technical design, namely that much of our work has centered on
mitigating the impact of IT by redesigning the social aspects of the system
or by trying to gain user support, rather than inﬂuencing the design of IT
itself.

(Davis et al., 2014, p. 172)

This new sociotechnical approach has been particularly useful in critical
approaches to the shortcomings of large-scale public sector IT projects in the
UK, such as the NHS National Programme for IT mentioned above, and the
Integrated Children’s System (White et al., 2010). In the context of health
care, it has led to the claim that ‘80% of IT projects are known to fail;
adopting a socio-technical approach will help them to succeed in the future’
(Clegg et al., 2010).

David Wastell, who has analysed the Integrated Children’s System (ICS) at
length, compares his conclusions to those of Ken Eason’s analysis of the
National Programme for IT as follows:

Eason makes a similar case in his own work for a ﬂexible sociotechnical
approach fostering local diversity, based squarely on user needs. We
thoroughly concurred; had an STSD [sociotechnical systems design]
approach been followed in children’s social care, a much better system
could well have been developed, one that supported practice rather than
disrupting it.

(Wastell, 2011, p. 84)

Attempts have also been made in recent years to combine sociotechnical
approaches with software engineering to form a combined ﬁeld of
sociotechnical systems engineering, which is deﬁned as ‘the systematic and
constructive use of socio-technical principles and methods in the
procurement, speciﬁcation, design, testing, evaluation, operation and
evolution of complex systems’ (Baxter and Sommerville, 2011, p. 4).
Speciﬁcally, the argument is made that sociotechnical systems design is often
used as a method of analysis which is then explained to software engineers;
and moreover that it is often used for the redesign of existing systems. Baxter
and Sommerville, who have a background in software engineering but also
draw on techniques from human–computer interaction, have sought to create
a new ﬁeld ‘in which a socio-technical approach pervades the entire systems
engineering life-cycle’ (p. 10). However, they recognise that this is a difﬁcult
enterprise, both in terms of shaping such a ﬁeld and in terms of gaining
acceptance from practitioners.

22

Part 1 – Sociotechnical systems design

In a similar way, the scholar of design Donald Norman (well known for his
work on user interface design but also in many other areas), working with an
international group of colleagues, has combined design with sociotechnical
systems under the name of DesignX (Norman and Stappers, 2015). This term
refers to complex societal systems ‘whose interactions are critical to the
system’s overall behavior’ (p. 84). These can be characterised by properties
which fall into three categories: the psychology of human behaviour and
cognition; the social, political and economic framework of complex
sociotechnical systems; and the technical issues that contribute to the
complexity of DesignX problems (p. 86).

Enid Mumford’s last published article (2006) was an overview of the history
of sociotechnical design, as it was developed in many different countries,
which describes some of the above history in greater detail. Be aware that the
article by Mumford is quite a substantial piece of writing (although highly
readable), and that you will need to devote a signiﬁcant amount of time to it.
The following activity will help you with the skills needed to read and
critically understand a complex academic article. You may wish to know that
it will help you in preparing for TMA 02.

Activity 1.5 (exploratory)

2 hours 30 minutes
Work through the OU Library activity on critical engagement with academic
texts, linked from the module website. As part of this activity you will read
the article by Mumford (2006).

Activity 1.6 (self-assessment)

10 minutes
Given your reading of the above section and Mumford’s article:

(a) What would you say are the main aspects of the sociotechnical approach

as it has developed since the 1950s?

(b) What parts are relevant today, in the context of IT systems?

1.2 Designing effective sociotechnical systems:
examining the ETHICS approach
Mapping the components of a sociotechnical system is important, but it is not
in itself enough. How do we go beyond this, to be able to design
sociotechnical systems? Surprisingly, much of the literature on sociotechnical
systems within information systems is descriptive rather than prescriptive – it
analyses and describes the nature of existing systems, as we have been doing
earlier in this Part (and in Block 1). This is important and helpful, and has
led to the very important recent critiques already mentioned of the NHS
National Programme for IT and the ICS, but it is sometimes important to go

23

Part 1 – Sociotechnical systems design

beyond this approach to one that is focused onde sign, the focus of so much
of the Tavistock Institute work.

The approach to sociotechnical IT systems design that we will follow here is
the ETHICS framework created by Enid Mumford, as described earlier. It
was initially formulated in the 1980s, but Mumford worked on it in different
ways until her death in 2006. It remains one of the best-described
frameworks for the sociotechnical design of IT systems.

ETHICS stands for Effective Technical and Human Implementation of
Computer-based Systems. The acronym is not intended to suggest that it is
focused on ethical frameworks as such. Rather, ETHICS is a sociotechnical
approach with its roots deep in the work of the Tavistock Institute. The key
concept of the ETHICS approach is participation: the involvement of users
at each stage of systems design – not just the technical systems, but also the
organisational aspects of the system. This clearly draws deeply on the
Tavistock tradition of industrial democracy and autonomous working groups.
Mumford deﬁned participation in IT systems design as follows:

A process in which two or more parties inﬂuence each other in making
plans, policies or decisions. It is restricted to decisions that have future
effects on all those making the decisions or on those represented by them.

(Mumford, 1995, p. 12)

Many different techniques for user participation are possible, from formal
processes such as the involvement of union representatives in the design team
(common in the Scandinavian projects discussed in section 1.1.2), through
more informal groups bringing in multiple stakeholders to a design team, to
processes of consultation. Participatory design processes can take a waterfall-
type approach of requirements, design and implementation (as the ETHICS
framework discussed below largely does), or use a more iterative approach
involving rapid prototyping, a style developed in Scandinavia from the late
1980s onwards (Greenbaum and Kyng, 1991).

Mumford’s argument for the importance of user participation was that:

All change involves some conﬂicts of interest. To be resolved, these
conﬂicts need to be recognized, brought out into the open, negotiated and a
solution arrived at which largely meets the interests of all parties in the
situation. Differences of interest will not be conﬁned to management and
subordinates, but will occur between staff with different responsibilities and
in different grades and functions. Therefore, successful change strategies
require institutional mechanisms which enable all these interests to be
represented; participation provides these.

(Mumford, 1995, p. 25)

Hirschheim and Klein have written at some length of the importance of what
is often described as an emancipatory approach to systems development (one
devoted to human freedom). In particular they have analysed the way in
which the ETHICS method exempliﬁes an emancipatory approach. They
argue that:

24

Part 1 – Sociotechnical systems design

A systems development methodology is emancipatory if it helps overcome
constraints to human well-being due to physical (natural or technical),
psychological, or social conditions or forces. The two most important
prerequisites for emancipation are free inquiry and democratic practices.
ETHICS explicitly addresses free inquiry through its inquiry model.
Democratic practices are implemented in ETHICS through its emphasis on
participation. ETHICS’s inquiry model suggests several measures to
safeguard the conditions of ideal speech under which emancipatory
discourses can ﬂourish.

[…]

It sees participation as a fundamental value and not just as a means to
secure compliance, to elicit detailed requirements, and the like. Clearly,
along with recognizing the need of participation for communication and
problem solving, ETHICS already has a truly emancipatory vision of the
importance of participation.

[…]

It can be seen that emancipation produces positive consequences for
effectiveness and efﬁciency concerns: stable, self-conﬁdent personalities are
the pillars of a stress-resistant work force; individuals conﬁdently
expressing ideas is the bedrock of creativity needed to meet competitive
demands; and only people accustomed to autonomous, responsible action
can be expected to take initiative when things go wrong, which increases
the organization’s ﬂexibility and capacity to deal with uncertainty.

(Hirschheim and Klein, 1994, pp. 97–98)

Having looked at the emancipatory principle of the ETHICS method, we must
turn to the details of the method itself. The method took various forms over
the course of Mumford’s work, but we will describe here the most settled
form of the method, as described by Mumford (1983) and summarised by
Avison and Fitzgerald (2006). It is intended for the redesign of a particular IT
system within a particular organisation. In this version, the ETHICS method
includes the following 15 steps (plus a crucial initial stage which we have
described here as step 0), which can be found in Box 1.2.

Box 1.2: Stages of the ETHICS method

0 Establish a Design Group of no more than 8–10 people, which
‘will design the new system, including in its brief the choice of
hardware and software, man-machine interaction, the overall
reorganisation of the design area and the allocation of responsibilities
and tasks to groups and individuals. The Design Group will consist
of representatives from each major section and function, each grade,
group and sex.’ (Mumford 1983, p. 65)
1 Why change? The Design Group must ask whether it is clear that
the existing system really needs to change and why, looking at future
possibilities, demands and constraints.
2 System boundaries: Clearly identifying the boundaries around the
system which the Design Group is redesigning, to be clear ‘where its

25

Part 1 – Sociotechnical systems design

26

design responsibilities begin and end’ (Mumford 1983, p. 68). This is
important to enable the group to do its work but also to avoid what
we would now call ‘mission creep’ – the scope of the redesign
project becoming too large over the course of the project.
3 Description of existing system: It is vital that the Design Group
understands the existing system before redesigning it – all too
frequently, IT systems are redesigned or replaced with little
knowledge of the sociotechnical richness of what made the system
work. In ETHICS, this is done in two ways. First, it uses a
‘horizontal’ input/output analysis, of the key activities in the system
(using a three-column structure with inputs on the left, activities in
the middle, and outputs on the right). Second, it uses a ‘vertical’
analysis based on the viable system method (Beer, 1981) which
analyses activities at ﬁve different levels: operational activities;
problem prevention/solution activities; coordination activities;
development activities; and control activities.
4 Deﬁnition of key objectives: moving away from the existing
system, this stage takes a clear look at the main reasons for the areas
within the system boundary. It asks why these areas exist, what are
their roles and purposes. From this stage, the Design Group produces
a set of key objectives for the system. These are largely business-
oriented goals rather than being focused on technology.
5 Deﬁnition of key tasks: Having established the key objectives for
the system, the next stage examines what are the key tasks required
to achieve those objectives (at a high level of detail).
6 Key information needs: Given the key tasks established in the
previous stage, this step decides upon the information that the system
will require to carry out those tasks.
7 Diagnosis of efﬁciency needs: This step looks for variances (‘a
tendency for a system or part of a system to deviate from some
expected or desired standard or norm’, Mumford 1983, p. 74). Two
types of variances are identiﬁed: key (or systemic) variances, which
are problematic aspects of a system that cannot be ignored but can
potentially be controlled; and operational variances, which are less
fundamental and often arise from ﬂaws in previous design processes.
Crucially, given the participatory nature of ETHICS, variances are
identiﬁed by stakeholder groups within the organisation and fed into
the Design Group through the representatives of those groups – they
are not identiﬁed in a top-down manner by consultants.
8 Diagnosis of job satisfaction needs: Job satisfaction is deﬁned by
Mumford as ‘the ﬁt between an individual or group’s job needs and
expectations, and the requirements of the job which they presently
occupy’ (1983, p. 77). Given the weight that ETHICS, and the
sociotechnical approach generally, places on job satisfaction, this
stage is seen as just as important as stage 7. The ETHICS method
includes a detailed questionnaire of job satisfaction to beﬁ lled in
anonymously by all those working within the system boundary. Once

Part 1 – Sociotechnical systems design

the questionnaire is completed, the results are discussed within each
stakeholder group, and summarised through the completion of a form
to note which aspects of job satisfaction are satisfactory and which
are unsatisfactory.
9 Future analysis: Assessing the changes which are likely to arise in
the external environment over the next ﬁve years which will affect
the future longevity of the system. This relates closely to the topics
which are covered by Block 3 of this module.
10 Specifying and weighting efﬁciency and job satisfaction needs
and objectives: Mumford describes this as the key step in ETHICS. It
involves taking the diagnoses in stages 7, 8 and 9, and comparing
and weighting them to form a set of key objectives for the new
system. It is crucial that this stage be carried out in a participatory
manner, involving all members of the Design Group.
11 Organisational design of the new system: The design of the tasks
required to carry out the objectives identiﬁed in stage 10, to be
described in some detail based on Beer’s ﬁve levels of activity used
in stage 3; along with an analysis of the skills, roles and
relationships required by those tasks.
12 Technical options: This stage is carried out in parallel with stage
11 (organisational design), to examine the key options – in terms of
hardware, software and user interface design – for the technological
aspects of the new system.
13 Preparation of a detailed work design: Based on the combination
of stages 11 and 12, the tasks and activities of the new system need
to be mapped out in some detail. Mumford drew heavily upon the
autonomous task group ideas of sociotechnical systems for this stage.
14 Implementation: Putting the new system into practice, both
technically and organisationally. Clearly this will take a considerable
length of time, and aspects of training and progress monitoring must
be carefully examined.
15 Evaluation: Once the system is in place, it needs to be evaluated,
using the tools of variance analysis and job satisfaction needs that
were previously used in the redesign (stages 7 and 8), to determine
whether the new system has achieved improved efﬁciency and
increased job satisfaction.

27

Part 1 – Sociotechnical systems design

These steps can be summarised in a diagram, showing the key stages of
STSD that are used in the ETHICS framework (Figure 1.3).

Set human objectives
(improved job satisfaction and
quality of working life)

Set efficiency objectives
(improved business efficiency)

Specify human alternatives
(work organisation, job design)

Specify technical and
administrative alternatives
(hardware, software, work
procedures, information flow)

Match as sociotechnical alternatives

Rank in terms of ability of each
alternative to meet human and
efficiency objectives

Consider costs, resources, constraints

Select best sociotechnical solution

Figure 1.3 Overview of the ETHICS approach to sociotechnical systems design
(Source: Mumford 1995, p. 46)

ETHICS was used by Mumford in many different settings. A good overview
of four of them can be found in an article by Porra and Hirschheim (2007),
published shortly after Mumford’s death. The part of the article we would
mainly like you to read is the section entitled ‘Four Examples of Mumford’s
Work in IS’ (starting on p. 468 and ending on p. 471). The rest of the article
is an extended interview with Enid Mumford on the history of her work,
which you may ﬁnd interesting but are not required to read (note that reading
the whole interview will take signiﬁcantly longer than just reading this
particular section).

The four settings described in the article are as follows:

28

Part 1 – Sociotechnical systems design

. Turners Asbestos Cement – the creation of a new accounts system for a
construction company, with good job design and workplace ﬁt as well as
technical design.

. Rolls Royce Aerospace – computerisation of an invoicing process, to

improve efﬁciency but also to take a participative approach.

. Digital Equipment Corporation – development of the XSEL system to

support sales staff, as described earlier.

. SKIL – a Dutch company producing power tools who required an updated

material planning system.

Activity 1.7 (exploratory)

1 hour
Now read Porra and Hirschheim (2007), pp. 468–471, which can be found in
the Block 2 Part 1 resources section of the module website.

Which of the four case studies in the article did you ﬁnd most useful, and
why? Do any of them relate to your own experience?

Because of the complexity of ETHICS and its need for multi-stakeholder user
participation, we will not ask you to apply it in practice. However,
Activity 1.8 asks you to think through how you would apply it in a real
situation.

Activity 1.8 (exploratory)

20 minutes
Consider again the Crossrail IT system (Box 1.1) or your alternative IT
system, which you have already analysed in a number of activities previously.
If you were asked to redesign this system in a participatory manner using the
ETHICS framework:

(a) How would you go about it, and what steps would you need to follow?
(b) Who would you seek to involve in the redesign process?
(c) What kind of outcome from the process might you expect?
(d) At what point in the redesign process would you seek to involve

ETHICS?

ETHICS is not without its critics. You are now going to read one further
article, from the perspective of critical social theory, published in the same
issue of the Journal of the Association for Information Systems as the
previous article. It presents a sympathetic analysis of ETHICS, but one which
discusses its ﬂaws as an approach from the perspective of power and
morality. The article is a long one, so we will only ask you to read about half
of it.

29

Part 1 – Sociotechnical systems design

The author, Bernard Stahl, draws on what he refers to as ‘critical research in
information systems’ (CRIS), a set of approaches which hold that ‘the social
world is unjust and prevents individuals from living up to their potential
[leading] to the critical intention to change reality and promote emancipation’
(Stahl, 2007, p. 482). Critical approaches tend to look at issues of power and
attempt to provide intellectual and practical tools to reshape society in a way
that puts power in the hands of the disadvantaged.

Be aware that this article is somewhat abstract in places, drawing on
philosophical and social theories about ethics. You may ﬁnd it useful to refer
back to the reading methods you learnt about in Activity 1.5. However, the
theory in the article is all presented from the perspective of IT systems
(referred to as ‘information systems’ in the article), and is all intended to be
used to make sense of IT systems.

Activity 1.9 (self-assessment)

1 hour
Read the ﬁrst half of the paper by Stahl (2007), which can be found in the
Block 2 Part 1 resources section of the module website, up to the end of the
ﬁrst paragraph on page 484.

What are the main aspects of Stahl’s critique of ETHICS? Do you agree with
his argument?

As you have seen in Stahl’s article, one of the key criticisms that is often
levelled at sociotechnical systems design (both in Mumford’s work and in
earlier work from the Tavistock tradition) is that it fails to take sufﬁcient
account of issues of power and the imbalance of power between different
stakeholder groups. In the next sections of this Part, we will go on to look in
further depth at power and its nature within sociotechnical systems. First,
however, we will look at a methodological alternative to ETHICS which
addresses some of these criticisms.

1.2.1 An alternative to ETHICS: the Collective Resource
Approach
As mentioned earlier in the block, sociotechnical design, and in particular the
work of Enid Mumford, was well known in Scandinavia during the 1970s.
Mumford’s approach was challenged by some Scandinavians as not going far
enough in including the voice of workers or in reﬂecting their aspirations to
increased industrial democracy (Ehn, 1988). A network of computer
scientists, trade unionists and others had become concerned that the
introduction of computerised technologies threatened the quality of working
life through increasing work intensity, deskilling workers, and paying
insufﬁcient attention to workers’ existing knowledge. This led to a series of
projects which pioneered ideas of participatory design, or more speciﬁcally
the Collective Resource Approach (CRA), to information technology (Ehn
and Kyng, 1987). The CRA built on earlier work by Kristen Nygaard.

30

Part 1 – Sociotechnical systems design

Nygaard is also recognised as the co-inventor of object-oriented computing,
alongside Ole-Johan Dahl, and the two received the ACM Turing award in
2001 for their work.

The best known, and most inﬂuential, of these projects was UTOPIA
(Sundblad, 2010), which ran from 1981 to 1984 (the name is an acronym in
Swedish for ‘Training, Technology and Products from the Quality of Work
perspective’). UTOPIA aimed to support workers in asserting inﬂuence over
the introduction of technology into newspaper printing. During the late 1970s
and early 1980s newspaper print industries around the world were undergoing
deep changes associated with the introduction of computerisation. These
profoundly changed the nature of print work, for example, replacing the
existing composition of pages using movable type-metal by workers known
as compositors. This work was both physical and highly skilled. As electronic
publishing developed, compositors’ skills were less critical; much, if not all,
of this work could be done by others, including journalists themselves.
Newspaper industries in Europe and North America were traditionally
strongly unionised. In the UK and US in particular, these technological
changes led to ferocious, but ultimately unsuccessful resistance by the print
unions. In Scandinavia, however, the unions saw this resistance to technology
as a form of ‘Luddism’.

The term Luddism as used here is seen as an entirely negative rejection of
technology. While it is widely used in this way this does not reﬂect the
historical reality of the original Luddites of the early 1800s, who were at
least as concerned with the control of technology as they were with the
technology itself. For example, in resisting what they saw as the threats of
new textile technologies, the Luddites rarely attacked technologies in smaller
cotton and woollen mills and focused their attention on its use in larger mills,
where it was implemented as part of increasingly exploitative work
relationships as the industrial revolution evolved (see Hobsbawm, 1952;
Sale, 1996).

Rather than respond to technology in printing and more widely in what they
saw as a wholly defensive way, Scandinavian unions sought to make sure that
the introduction of information technologies had positive consequences for
workers as well as employers. In particular, they sought to allow workers to
develop independent expertise in understanding technology, and in proposing
what might be implemented and how it might be evaluated (Lundin, 2010).

The UTOPIA project aimed to ﬁnd ways of translating the objectives of the
quality of work, skills and product quality into technological systems in the
printing industry. Among the issues that UTOPIA struggled with were the
disparity in knowledge and resources between workers and management to
evaluate technological options. A key objective of the project was to make
sure that worker participants in management design and planning were able
to speak on behalf of other workers (as union representatives) on the basis of
independently generated knowledge. They sought to engage in the design
process in ways that were not reliant on the attitudes and language of
company IT staff. Then, as now, it is not uncommon for consideration of
technology to be couched in terms that make it difﬁcult for non-specialists to

31

Part 1 – Sociotechnical systems design

understand the implications of alternative approaches. The project approached
this in several ways (Sundblad, 2010), including:

.

.

.

enabling mutual learning among graphic workers, computer and social
research experts
study visits to Xerox PARC in California to examine important new
technological developments, including: ethernet networking; drag and drop
graphical user interfaces (forerunners of Apple OS and Microsoft
Windows – prior to then applications had largely been driven by
command line interfaces); ‘What You See is What You Get’ (where the
editor shows the appearance of the output while it is being edited); laser
printers; scanners
organising a workshop of graphic workers, journalists and designers to
explore ‘good quality use’ of graphics products.

UTOPIA used several innovative methods to help specialists and graphic
workers to understand each other’s perspectives better (Bødker et al., 2000).
These included low-tech mockups to help participants explore organisational
aspects of system alternatives (for example, physical representations of
printers in cardboard to better visualise where they might be placed, and to
highlight any ergonomic concerns) and the use of slides and other graphical
representations of workﬂow to enable discussions of alternatives, for
example, which workers should be responsible for what. They also produced
technical speciﬁcations such as the size and resolution of monitors and
printers that could support alternative ways of working.

Ultimately, however, UTOPIA and other related projects adopting similar
methods were unable to make sure that the company introduced the kind of
technologies that they envisaged. As trade union inﬂuence waned in
Scandinavia during the 1980s, as elsewhere, the insistent approach to
ensuring workers’ voices were heard in the design and implementation of
information technologies diminished (Kensing and Blomberg, 1998).

However, UTOPIA and the CRA have left an important legacy. The
techniques of visualisation, low-ﬁdelity prototyping and mock-ups have been
taken up and reﬁned in the ﬁeld of interaction design. Unsurprisingly, given
participatory design’s democratic impulse, these have included addressing
social and environmental, as well as technological problems, and the
repertoire of methods has been developed and applied beyond information
technologies. The biennial Participatory Design Conference (PDC) of the
Association for Computing Machinery (ACM, the US/international body
whose conferences are one of the key ways that the fast-moving ﬁeld of
Computing shares ideas) continues to provide a meeting place for sharing
ideas and innovation on participatory innovation. One area in which
participatory design continues to be prominent is in less commercial domains
such as international development or technologies which might be termed
outside the mainstream.

32

Part 1 – Sociotechnical systems design

Activity 1.10 (exploratory)

1 hour 15 minutes

Read the paper by Maartmann-Moe et al. (2022), which you will ﬁnd in the
Block 2 Part 1 resources section of the module website. The paper tackles a
recurring problem for participatory design: how to help potential technology
users to appreciate the potential of unfamiliar technologies in their work and
social lives such that they can articulate genuinely helpful needs.Having read
the paper, make brief notes on the following questions:

1 In the two case studies, what techniques were used to help potential users

to understand and articulate potential technology applications?

2 Could similar techniques usefully be applied in other, more conventional

IT systems settings?

3 What organisational and technological problems might these pose?

1.3 Power in sociotechnical systems
One major issue with the sociotechnical approach is its treatment – or rather
a perceived lack of treatment – of power issues. This concern arises because
it is often suggested that STSD assumes that there is an unproblematic
balance of power between stakeholder groups. In an attempt at addressing
this concern, and building on the initial discussion of power in Block 1, this
section will unpack issues of power in sociotechnical systems.

As a reminder, in Block 1 Part 1, we deﬁned power as:

the ability or capacity to perform or act effectively [or] the ability to direct
or inﬂuence the behaviour of others or the course of events in the pursuit of
some goal or agenda.

(Ramage et al., 2024, p. 54)

We begin by identifying possible sources of power in sociotechnical systems.
We then go on look at the persuasive power of technology, and consider
some ethical issues arising in sociotechnical systems. Next, we take a more
critical look at power, examining how this concept has been formulated by
two philosophers – Steven Lukes and Michel Foucault. Drawing on these
conceptions, we then go on to investigate the implications of a more detailed
critical understanding of power for planning successful IT systems by
considering the relationship between power and complexity, one of the
themes introduced in Block 1. Finally, we explore the case study of a health
care IT system with a view to understanding how different sources of power
in sociotechnical systems interact with each other, and different conceptions
of power are operative within them.

33

Part 1 – Sociotechnical systems design

1.3.1 Sources of power in sociotechnical systems
In Block 1, you were introduced to issues of power in connection with
identifying stakeholders and the power relations between them in an IT
system, and earlier in this Part you learned that an IT system is an example
of a sociotechnical system. In this section, we draw these two concerns
together by taking an initial look at the sources of power in sociotechnical
systems.

Activity 1.11 (self-assessment)

10 minutes
Brieﬂy describe what you understand by the term sociotechnical system.

Activity 1.12 (exploratory)

20 minutes
Given the deﬁnition of a sociotechnical system and the discussion of
sociotechnical systems presented earlier in this Part, spend the next few
minutes thinking about what power might mean in the context of such
systems. Try to identify the main sources of power in a sociotechnical system
and the relationships between them. (Hint – you might want to look back
brieﬂy at the discussion of power in Block 1 Part 1.)

Social power in IT systems
In Block 1 Part 1, power was deﬁned in terms of the ability to act effectively,
and to direct or inﬂuence the behaviour of others or the course of events in
the pursuit of some goal or agenda. The different forms of power associated
with sociotechnical systems can assume a variety of forms in IT systems
including the following:

1 Physical – IT hardware, software and network communications
2 Resource – human and IT
3 Status – owners, management, designers, programmers, users
4 Expert – management, design and implementation knowledge
5 Personal – competition, collaboration, leadership.
Apart from those kinds of power which are of a technological nature (1, 2),
all the other kinds of power in the above list are social in nature, being
traceable either to people (2, 3) or the organisation/enterprise (4, 5). You
looked brieﬂy at people power in Block 1 Part 1 in the context of a
discussion about stakeholders and the differential power relations between
them within organisations (or enterprises). Organisational power, which is
distinct from people power, includes the following (in no particular order):

.

.

.

formal authority
control of scarce resources
use of organisational structure, rules and regulations

34

Part 1 – Sociotechnical systems design

.

.

.

.

.

.

.

.

.

.

control of decision processes
control of knowledge and information
control of boundaries
ability to cope with uncertainty
alliances, networks and control of informal organisation
control of counter organisations (i.e. sources of oppositional power, both
internal and external)
symbolism and the management of meaning
class, gender and race and the management of their relations
structural factors that deﬁne the arena for action
control of technology.

The idea that technologies can exert power might strike you as somewhat odd
given the people-centred way in which power has been discussed earlier in
this module – that is, in terms of stakeholder relations within organisations.
This is due to a widespread tendency to attribute agency – that is, the
capacity for action – to human beings, arguably on a common sense basis, a
tendency that is increasingly extended to IT systems incorporating artiﬁcial
intelligence (more speciﬁcally, machine learning) by some commentators.
Notwithstanding the various controversies associated with such attribution
(which involve arguments for and against the view that such systems are
capable of self-originated autonomous action, among other concerns), in this
Part, we take the view that technologies are capable of acting, of possessing
agency, albeit in a derivative sense – for example, on account of their having
been programmed by a human being and thereby having embedded within
them human concerns (goals, agendas etc.) in the case of software artefacts.
It follows that if technologies can act, they can exert power.

Technological power in IT systems
In Block 1 you learned that the relationship between people and technology
can be understood in a variety of ways, and the sociotechnical approach is
only one among many. Other approaches mentioned in Block 1 included:
technological determinism, the social construction of technology, techno-
scepticism, and techno-optimism.

Appreciating this fact is important because whichever perspective (or
combination of perspectives) an individual or group subscribes to will
inﬂuence how they view the relationship between people, power and
technology which, in turn, can have profound implications. For example,
when combined with theories of technology that are implicitly or explicitly
deterministic – that is, where social factors are ignored in discussing the
relationship between power and technology – accounts of system
implementation will tend to remain silent on issues of legitimacy and values.

Nonetheless, despite these different ways of thinking about the relationship
between people and technology most people continue to believe that
technology is an independent variable in their lives, a mere tool to
accomplish some goal or carry out a task in a way that is ‘liberating’ since it
makes life easier. In this connection, think about obvious examples such as

35

Part 1 – Sociotechnical systems design

washing machines, food processors, mobile phones and cars. Yet technology
can just as easily be considered an instrument of control, oppression and
exploitation: think about the pervasiveness of wireless technologies such as
mobile phones and laptops and their potential for surveillance; in addition,
consider radio frequency identiﬁcation (RFID), a technology set to replace
barcode technology in the very near future (see Box 1.3). This is an excellent
example of a technological development that is presented as inevitable,
regardless of its potential for abuse (for example, as a threat to personal
privacy).

Box 1.3: Radio frequency identification (RFID)

Radio frequency identiﬁcation (RFID) is a technology similar to the
electronic article surveillance tags used in stores to protect items such as
DVDs and books from theft.

RFID devices (generally called tags) consist of a small microchip and a
radio antenna. The microchip contains a tiny amount of processing
capacity and an equally small amount of memory – usually just enough
to contain a unique identity number, as well as some specialised
circuitry that can send and receive radio messages.

The most common RFID tags are ‘passive’ (they contain no power
source of their own). These work in conjunction with readers that can be
incorporated into supermarket checkouts, ticket barriers or handheld
wands. The reader emits a low-powered radio signal that activates the
chip in the tag. The chip then returns a very weak radio signal
containing the data held in its memory, which is received by the reader;
from there it can be processed like any other data. The alternative to
this is ‘active’ RFID, in which the tag draws power from its own
battery, but this is less common.

An example of passive RFID is the tag built into a London Underground
Oyster card. When the card is brought near to the reader in the ticket
barrier, the chip in the card broadcasts the unique account number of the
ticket holder. The barrier receives this account number and requests the
balance of the account from a central database. If the account number
belongs to a valid account and there is enough money in the account,
the barrier opens and the user can make their journey.

In general, technologies can be both controlling and liberating, the degree of
control or liberty depending on: (1) who has power over the design,
deployment, ownership and use of a technology, and (2) the perspective from
which it is being viewed. For example, in an organisational context, the
introduction of a new IT system or service can be seen either as a neutral tool
that has been designed and is being used to maximise the ability of
management to meet goals, or as a means by which to further extend control
and domination over the workforce by management. Thus, power and
technology are inextricably linked and therefore activities and occupations

36

Part 1 – Sociotechnical systems design

that are strongly associated with the development and use of technology are
likely to be heavily implicated in relations of power. If we accept the view
that the ownership/control of technology and technological expertise are
sources of power, then any organisational activity that centres on technology
has the potential to become an arena for power struggles. In Block 1, this
struggle was framed in terms of stakeholders and the power relations between
them; however, this picture is somewhat incomplete since it does not consider
the possibility that technology might be involved in power relations in ways
other than those that are purely technical or instrumental in nature.

Activity 1.13 (exploratory)

11 minutes
Some people don’t like technologies, while others are very concerned about
them (e.g. security, privacy, threats of job losses). Yet many people continue
to view technologies as neutral or even liberating. Try to come up with a
reason why this might be the case. (Hint – think about the nature of
contemporary society in terms of the economy and the role of the media.)

Technologies tend to be viewed as liberating or at least neutral because
people are persuaded by advertisers, marketers, technological enthusiasts, etc.
that this is what they are. This is an instance of what is known as rhetorical
power, that is, the power of persuasion. Such power is usually associated
with human agents, but what if technologies which can also possess agency
(albeit derivative) are themselves capable of wielding rhetorical power?

1.3.2 The persuasive power of IT systems
Earlier in this Part, you studied the development of the sociotechnical
systems perspective and its relevance for planning successful IT systems. In
its original formulation, this perspective incorporated a strong belief in the
transformative power of technology, and having thus far examined power in
relation to the human component of IT systems – the ‘socio’ in sociotechnical
systems – we now need to turn our attention to the technical component.
Apart from the obvious computational and communicational power of such
elements, planning, designing and building technical systems involves an
exercise of human power that results in speciﬁc stakeholder purposes, choices
and interests being incorporated – or rather, ‘embedded’ –in such systems.
Such ‘shaping’ of technical power by human power results in systems that
can, in turn, inﬂuence or ‘shape’ the exercise of human power in other ways.

In this section, we will look brieﬂy at how a particular form of human power
– persuasion – can be extended to computers and ICTs in order to further
enhance human power. Understanding how persuasion can be enhanced
through the use of technology is important because of its fundamental role in
building the credibility and trust that is necessary for organisational
cooperation in a sociotechnical context.

37

Part 1 – Sociotechnical systems design

Note: The term ‘captology’ was ﬁrst introduced by social scientist
B. J. Fogg in 1996 and is based on the acronym ‘CAPT’ which stands
for computers as persuasive technologies; captology refers to the study
of computers as persuasive technologies (Fogg, 2003).

We will begin by looking at what is meant by persuasive technology and
some examples of it.

Persuasive technology
Persuasive technology refers to technologies designed to change people’s
attitudes and behaviours. Early forms of persuasive technology include radio,
newspaper and television advertisements; however, these are all rather
‘passive’ media and persuasive techniques tend to be more effective when
they are interactive – that is, when the persuaders (in this case technologies)
can adjust their inﬂuence tactics as the situation evolves. As stated
previously, we generally tend to think of human beings as the agents of
inﬂuence and persuasion; however, computers and other forms of IT can also
assume the role of persuaders – that is, they can be rhetorical as well as
logical.

Computer-based persuasive technologies have a number of advantages over
human persuaders:

. They are more persistent – they don’t get tired, discouraged or frustrated

and don’t need to eat or sleep.
. They can offer greater anonymity.
. They can manage huge volumes of data.
. They can adjust the presentation of data and information to match

people’s preferences (for example, graphics, audio and video, animation,
simulations).

. They can scale – identical copies of persuasive technology experiences

can be replicated and distributed.

. They can become ubiquitous, intervening at the right time and place to

afford enhanced persuasive power.

Persuasive technologies have been used to change people’s attitudes and
behaviours in a variety of contexts. Although the primary applications for
persuasive technology were in advertising, marketing and sales, it can be, and
has been, used in many other situations: for example, encouraging the
performance of physical exercise with a view to enhancing health and ﬁtness
(pedometers and heart rate monitors), and climate-persuasive services
encouraging the adoption of low carbon footprint lifestyles. In an IT systems
context, persuasive technology might be used to motivate teams to set goals
and make deadlines.

38

Part 1 – Sociotechnical systems design

Ethical issues associated with persuasion
Put simply, ethics is concerned with the determination of right and wrong
conduct. You will explore the meaning of this concept in more detail later in
this Block.

Since the purpose of persuasion is to change attitudes and behaviours in order
to bring about planned effects, the study of computers as persuasive
technologies has to deal with values. This follows from the fact that
designers/developers of such technologies are making decisions to persuade
others and, as argued previously, this may or may not be beneﬁcial for others
depending on whose perspective is being considered.

Activity 1.14 (self-assessment)

10 minutes
‘Persuasion is unethical.’ Do you agree with this statement? Brieﬂy explain
your answer. (Hint – think about the meaning of ethics and the difference
between persuasion, coercion and propaganda.)

An ethical agent of persuasion must be capable of taking responsibility for its
actions and their effects on others. Computers, and IT in general, might also
be viewed as agents of persuasion, however they cannot take responsibility
for the actions they perform. But then who is responsible for their actions? In
‘Toward an ethics of persuasive technology’, computer experts Daniel
Berdichevsky and Erik Neunschwander (1999) argue that designers of
technologies whose behavioural outcomes or effects are unintended, not
reasonably predictable and unethical should not be held responsible for such
outcomes. In their view, lack of prediction and lack of control of outcomes
constitute necessary and sufﬁcient conditions for discharging responsibility
from people as shown in Figure 1.4.

39

Part 1 – Sociotechnical systems design

If the …

Outcome

is …

Intended

Unintended

and …

reasonably
predictable

not reasonably
predictable

and …

ethical

unethical

ethical

unethical

ethical

unethical

then the
designer is …

praiseworthy

responsible
and at fault

not
responsible

responsible
and at fault

not
responsible

not
responsible

Figure 1.4 Flow chart clarifying the levels of ethical responsibility associated with predictable and unpredictable
intended and unintended consequences (Source: Berdichevsky and Neunschwander, 1999, p. 55)

The lesson to draw from this is that IT should be planned, designed, built and
used in ways that are both predictable and controllable by human beings.
However, as you learned in Block 1, many IT systems are highly complex,
making prediction and control difﬁcult if not impossible to achieve.

Activity 1.15 (exploratory)

10 minutes
Who, in addition to designers, do you think should be held responsible if the
outcome of a persuasive technology is unethical, yet reasonably predictable?
(Hint – think about the technology in terms of its control/ownership and
usage in addition to its design and development.)

1.3.3 Further ethical concerns – organisational whistle-
blowing
Ethical considerations are important – arguably, pivotal – when exploring
power issues in a sociotechnical systems context, and insofar as
sociotechnical systems comprise people, technology and organisation (or
enterprise), ethical considerations will necessarily be involved. For example,
as you have seen in Block 1, different stakeholders in an IT system will be
motivated by different agendas, and due to differential power relations
between them, will have different possibilities for action in terms of owning
and controlling the design, development and use of IT, all of which can –
and, it might be argued, should – be subjected to evaluation in terms of
‘rightness’ or ‘wrongness’. It is crucial to appreciate, however, that what
counts as ethical conduct is itself determined by power relations and

40

Part 1 – Sociotechnical systems design

stakeholder perspective since there is no neutral or objective ‘view from
nowhere’ from which to impartially resolve the matter.

Activity 1.16 (exploratory)

10 minutes
Given the differential power of stakeholders in organisations (considered as
enterprises), try to describe one way in which persuasive technologies might
be used to inﬂuence perceptions of IT system success. (Hint – think in terms
of the ability of different stakeholders to inﬂuence the design, development
and deployment of persuasive technologies within an organisation.)

Another important phenomenon to consider in relation to issues of power and
ethics in sociotechnical systems – speciﬁcally, with respect to the people and
organisational (or enterprise) components of such systems – is whistle-
blowing, which refers to exposing misconduct or alleged dishonest or illegal
activity occurring in an organisation. Whistle-blowers can make their
allegations internally (for example, to other people within the accused
organisation) or externally (to regulators, law enforcement agencies, to the
media or to groups concerned with the issues). Alleged misconduct might
include violation of a law, rule, regulation and/or a direct threat to public
interest, such as fraud, health and safety violations, or corruption.

In their contribution ‘Whistleblowing and power’ in the International
Handbook on Whistleblowing Research (2014), Kim Loyens and Jeroen
Maesschalck argue that whistle-blowing is a complex phenomenon tied up
with organisational power relations that are often asymmetric and dynamic.
Staff members who blow the whistle tend to lack the power and authority to
change organisational misbehaviour in any other way and so have to rely on
informal bases of power. However, such informal power should not be
underestimated: whistle-blowers whose voices are either silenced or not heard
within their organisation often turn to external reporting channels, which can
lead to bad publicity for, and other damage to, the organisation. In addition,
whistle-blowers who leave organisations take with them valuable knowledge
and experience. Yet it is also the case that whistle-blowers frequently face
reprisal, sometimes at the hands of the organisation or group which they have
accused, sometimes from related organisations, and sometimes from the law.

Whistle-blowing will be discussed in greater depth in the online Parts that
come later in Block 2.

Having spent some time looking at the different sources of power in IT
systems, the relationships between them and the ethical issues associated with
both the use of IT as a persuasive technology and the phenomenon of
whistle-blowing, we turn now to revisit the notion of power with a view to
examining two different critical conceptions in some detail.

41

Part 1 – Sociotechnical systems design

1.4 Further power issues in sociotechnical
systems
1.4.1 Power revisited
Based on the discussions of power in Block 1 and in previous sections, it is
apparent that power is a somewhat complex and multifaceted concept.
Despite this, some thinkers have argued that there are two basic ways of
thinking about power:

.

.

power understood as domination and exploitation
power understood as legitimate, functional authority.

Others prefer to think about the distinction between the exercise of power to
overcome conﬂict and the use of power to prevent conﬂict arising in the ﬁrst
place, and we will explore this distinction later in this Part.

In what follows, we will look in detail at two formulations of power that are
of direct relevance for planning successful IT systems.

Activity 1.17 (exploratory)

10 minutes
Spend the next few minutes thinking about two ways in which power might
be exerted by technical support staff in an organisation (or enterprise).

Lukes’ framework
The ﬁrst formulation of power is what might be described as the causal/
agent-based concept, traceable in the Western tradition to the philosopher
Thomas Hobbes and his writings on the sovereign human will, and to
seventeenth century billiard-ball models of mechanics in which one thing
affects another by impacting on it. This conception was subject to a number
of reﬁnements during the twentieth century, its original behaviouristic
formulation in terms of observable and measurable events being extended to
include the role played by goals and intentions, and culminated in the
framework presented by Steven Lukes in Power: A Radical View (1974). In
this antagonistic or ‘oppositional’ view, power is understood as having a
number of ‘dimensions’, each of which includes and builds on the previous
dimensions:

. The ﬁrst dimension (decision-making power) – observable power, for

example, one group or person attempting to get another to do something
(i.e. make a decision) they would not otherwise do.

. The second dimension (non-decision-making power) – the use of power to
limit the scope of decision-making and thereby ensure that certain things
do not get done.

. The third dimension (symbolic or ideological power) – the exercise of

power to shape people’s preferences. Crucially, this use of power enables

42

Part 1 – Sociotechnical systems design

the ‘powerful’ to ‘manage’ potential areas of conﬂict to such an extent
that actual conﬂict seldom occurs.

A one-dimensional approach to power views it as something that is exercised
overtly by one agent/group over another. A typical example might be
designers in an IT system development team using their expert power to get
senior management to endorse a given implementation. The main problem
with this approach is that it assumes that power is only exercised in situations
of observable conﬂict, and that individuals with grievances are fully aware of
them and can address them by participating in decision-making processes.

The two-dimensional approach builds on the former by challenging the
assumption that non-participation in decision-making means that groups/
individuals agree with the decisions made. It is quite possible that non-
participation is a result of suppressing options and alternatives that reﬂect the
needs of non-participants in the decision-making process. In any process of
decision-making, certain groups of actors may be able to determine the
outcome covertly or prevent or limit other (subordinate) groups from
participating in decision-making. This can be done in many ways, such as
through use of rules and regulations, setting agendas, or specifying a certain
timetable and controlling or withholding resources. It is important to
appreciate that insofar as technological systems are often regarded as value
free, neutral and free from bias, they are a potential site for the covert
operation of two-dimensional power.

The three-dimensional approach focuses on the exercise of power in the
absence of conﬂict. Here power is used not only to set agendas but to shape
the very preferences and views and opinions of people so that conﬂict –
whether overt or covert – seldom comes about. This involves the
‘management of meaning’ through a variety of means including cultural
symbols, language, rituals and myths. Following the Marxist tradition, Lukes
maintains that the operation of third-dimensional power results in the
production of ‘false consciousness’ such that people don’t realise that their
goals and intentions are not really their own, but are reﬂections of the
dominant – or hegemonic – ideology.

In an IT system context, third-dimensional power could be used to try to
construct a hegemonic situation for system planning and implementation.
This could be achieved through the management of meaning (e.g. what is the
purpose of the system, how will it be used, who will it impact on?) and the
control of legitimacy (e.g. who is involved in the process, why, where does
the process ﬁt in the wider ‘scheme of things?’). If successful, stakeholders –
other than those making use of this power – should not become aware of any
issues that may affect them, and therefore there should be little or no
resistance to the formulation of the desired approach to IT system planning
and implementation.

Criticisms of Lukes’ approach
One of the strengths of Lukes’ framework is its focus on decision-making:
when, where, how, why, why not and by whom. However, Lukes has been
criticised on the grounds that all three of his dimensions of power are agent
centric involving the conscious (or intentional) use of power by individuals

43

Part 1 – Sociotechnical systems design

or groups. In addition, his framework focuses on issues of ideology
(agendas), thereby obscuring consideration of organisational concerns.
According to Clegg (1989, p. 17), ‘any generally applicable theory of power
must also be a theory of organisation’ and must result in a framework in
which both organisational ‘obedience’ and organisational ‘resistance’ can be
located. In this view, rather than agency being possessed, it is something
which is achieved ‘by virtue of organisation, whether of a human being’s
dispositional capacities or of a collective nature, in the sense usually reserved
for the referent of ‘organisations’’. Clegg insists that:

A theory of power must examine how the ﬁeld of force in which power is
arranged has been ﬁxed, coupled and constituted in such a way that,
intentionally or not, certain ‘nodal points’ of practice are privileged in this
unstable and shifting terrain […] A radical view of power would consist not
in identifying what putative ‘real interests’ are but in the strategies and
practices whereby, for instance, agents are recruited to views of their
interests which align with the discursive ﬁeld of force that the enrolling
agency is able to construct.

(Clegg, 1989, p. 17)

On this basis, it has been suggested that Lukes’ framework must be extended
to include a fourth dimension of power of an unconscious, disciplinary and
pervasive type. On this conception, the society (or system) in which we live
bestows power on certain organisations or agents regardless of whether they
seek power. This follows from the idea that as organisations and social
systems evolve, power relations become embodied in these structures and
thereby invisible. Education, legal and regulatory systems all exert systemic
power on individuals and organisations. So do technological systems such as
the IT systems underpinning world banking, and as more and more computer-
based systems become networked, so the importance of technology as a form
of systemic power increases dramatically.

In summary, while Lukes’ framework remains important, as Clegg (1989) and
others have argued, rather than thinking of either ideology or hegemony as a
state of mind, they should be understood as a set of practices that seek to
constrain the indeﬁnite possibilities of agents and their relations in
determinate ways. This leads us to consider ‘post-structuralist’ conceptions of
power such as the one advanced by Michel Foucault (below) in which focus
shifts to techniques of discipline and production as well as rules that ﬁx
relations of meaning and membership.

Note: Although it is beyond the scope of this module to explore the
issue, it should be noted in passing that in the second edition of Power:
A Radical View, Lukes (2005) defends his three-dimensional conception
of power against the disciplinary conception advanced by Foucault and
others.

44

Part 1 – Sociotechnical systems design

Foucault
Inspired by certain developments in twentieth century physics – speciﬁcally,
relativity theory – philosopher Michel Foucault mounted a critique of the
causal/agent-based conception of power, proposing an alternative formulated
in ‘ﬁeld-theoretical’ terms and bearing some similarity to the political theorist
Niccolò Machiavelli’s strategic and organisational concept (Clegg, 1989). One
signiﬁcant aspect of Foucault’s ‘neo-Machiavellian’ shift was a commitment
to a non-agent-centric, that is, non-individualistic, view of power as
something that is fundamentally systemic yet non-totalising (fragmented,
localised) and essentially discursive in nature.

Note: Brieﬂy, for something to be ‘discursive’ means for it to be a
product of discourse, where a‘ discourse’ refers to a system of thought,
knowledge, or communication that constructs our experience of the
world.

According to Foucault, power is not an intrinsic property, that is, it is not
something that can be possessed by an agent in isolation from other agents;
rather, on his view, it is something that is fundamentally relational in nature.
Put simply, we might say that power exists in the relation between agents,
rather than in agents themselves; hence the importance of power relations
when considering issues of power in sociotechnical systems including IT
systems.

In order to get a grip on what Foucault means by aﬁ eld of power, think
about magnetic or electric ﬁelds in physics.

As stated above, Foucault views power as exercised in a context – or ‘ﬁeld’ –
which means that an agent’s possibilities for acting are always structured by
other agents, individual and collective, human and non-human; this is
important because as you saw earlier, computers are examples of persuasive
technology, and persuasion is a type of power readily associated with agents.
Some of these structures take the form of facilitators and are needed in order
for action to be possible, while others are constraints that limit the
possibilities for action, with the result that power is something that is both
exercised and simultaneously challenged or ‘contested’ in a given context.
Furthermore, Foucault holds these structures to be:

.

shifting (as opposed to ﬁxed)
. multiple (as opposed to singular)

.

.

decentralised (as opposed to centralised)
derivative (as opposed to original).

Crucially, Foucault associates power with practice, drilling, regimentation and
discipline and maintains that there is an inextricable connection between
knowledge (e.g. medicine, psychiatry, law) and power. In fact, Foucault goes
as far as stating that we should not talk in terms of knowledge and power,
but rather of knowledge−power or knowledge/power since in his view,

45

Part 1 – Sociotechnical systems design

knowledge is associated with classiﬁcation and power with marginalisation or
exclusion, both of which are mutually implicative (i.e. affect each other as
one alters).

Activity 1.18 (exploratory)

10 minutes
According to Foucault, ‘discipline’ has a twofold meaning encompassing both
power and knowledge. Spend the next few minutes thinking about what this
twofold meaning might be, giving one example of each of the two kinds of
meaning. (Hint – think of the different ways in which the word ‘discipline’ is
used in different areas of life.)

Foucault’s idea of knowledge−power is important for sociotechnical systems
because IT systems can be used to transform data into information, and
information, when suitably interpreted by people, can be transformed into
knowledge. To the extent that ‘knowledge is power’, we might then say that
the power of IT allows for the production of other kinds of power, that the
power of individuals and groups can be augmented or extended through the
use of IT, and that IT systems are sites for the production – and contestation
– of various forms of power.

Two (western) traditions of power summarised
We might summarise the difference between the concepts of power presented
by Hobbes and Lukes on the one hand and Machiavelli and Foucault on the
other by saying that the former is concerned with deﬁning what power is,
while the latter is concerned with interpreting what power does. In addition,
the former is located in individual agents, while the latter is located in
relations between agents. On this basis, we might distinguish between a
‘power to’ (Hobbes, Lukes) and a ‘power over’ (Machiavelli, Foucault) as
follows:

. Power to – the ability of an agent to do or be various things.
. Power over – the hierarchical relationships between agents, in which the

actions of agents are structured by a dominant agent or group.
The views of Machiavelli and Foucault are of particular relevance for
sociotechnical systems, especially those that are complex, since they help to
explain how an ordered totality of power can be constructed and secured
(i.e. established and maintained) in a situation that is characterised by ﬂux.
As Clegg (1989, p. 6) states, in such situations we need to ask ‘what
strategies and what organisation secured these powerful outcomes?’

46

Part 1 – Sociotechnical systems design

1.4.2 Power, IT systems, complexity and the environment
Insofar as power can be related to the control (management, limitation) of
uncertainty, uncertainty linked to unpredictability, and unpredictability
identiﬁed as a central characteristic of complex systems, it follows that an
awareness of complexity issues becomes extremely important when
considering power issues in complex sociotechnical systems. Towards the end
of Block 1, you learned that as systems become more complex, they can give
rise to emergent features in a ‘bottom-up’ fashion. This raises the question as
to whether power is embedded in IT systems in a‘ top-down’ fashion or
whether it emerges ‘bottom-up’ which, in turn, prompts consideration of
ethical issues of the kind explored earlier in section 1.3.2 (subsection on
Ethical issues). You were also introduced in Block 1 to the idea of a complex
adaptive system (CAS) and co-evolution between systems and their
environments. Due to the complex and dynamic nature of environments, all
complex sociotechnical systems will, sooner or later, become enmeshed in the
myriad power relations of the organisational environments in which they
operate.

In relationships between IT systems, power is present always and everywhere.
The primary reason for this is that IT systems, as sociotechnical systems,
include an organisational component, and organisations almost always operate
in complex and changing environments where competition, in some form or
another, and the threats and risks that it brings, are a major feature of
organisational life. In each case, the real or perceived threats and risks of
competition will underpin many power relations.

For this reason, in planning for successful IT systems, it is critical to develop
an environmental analysis that appreciates the existence and uses of power in
inter-organisational relations as well as within organisations themselves; in
short, we need to consider both intra- and inter-organisational power relation
perspectives.

Activity 1.19 (exploratory)

15 minutes
What is the likely nature of power relations between organisations in
complex environments that are subject to frequent and often rapid change?
What are the implications of this for system planning?

In the next section, we will look at an IT system case study with a view to
informing our ability to identify the operation of various sources of power,
stakeholder power relations, the persuasive power of IT, and the two critical
conceptions of power, as developed by Lukes and Foucault, in an IT systems
context.

47

Part 1 – Sociotechnical systems design

1.5 Case study: health care IT system
To conclude your study of this part, you will work through an extended case
study with relevance to power issues in IT systems.

Activity 1.20 (exploratory)

1 hour 30 minutes
Read the following extended case study (Box 1.4) based on extracts from the
article ‘Electronic Patient Records and Beneﬁts to Clinicians: An Actor-
Network Study of a Technological Innovation in the NHS’ (2014) by Mhorag
Goff and then answer the following questions.

(a) Describe the different sources of power in the Electronic Patient Records

(EPR) system and the relationships between them.

(b) Identify one feature of the EPR system which indicates its functioning

coercively and the stakeholders who are thereby inﬂuenced.

(c) Identify one feature of the EPR system that should have facilitated its

ability to function as a persuasive technology, and explain why this did
not occur.

(d) Identify one example of the operation of each of Lukes’ three dimensions

of power in the EPR system.

(e) Identify one example of the exercise of disciplinary power and one

example of such power being contested in the EPR system.

Box 1.4: Case study – An actor-network study of a
technological innovation in the NHS

Background
The National Programme for IT (NPfIT) was launched in the UK in
2002, as part of which a centrally deﬁned programme of Electronic
Patient Record (EPR) development was set out for both primary and
secondary care organisations across the NHS in England. Although the
NPfIT was dismantled in 2011 due to running behind schedule (it was
supposed to be completed by 2010) and the project running over budget
(costing to date an estimated £9.8 billion), the objectives of EPR
development, which formed part of NPfIT, were partially achieved in
terms of the implementation of local EPR systems in hospitals, and the
roll-out of a nationally accessible Summary Care Record. In short, the
ideal of a networked EPR as an infrastructure and enabler of wider uses
of patient information has only been partially realised.

The aim of EPRs was to provide safer, quicker and better quality patient
care as a key element of modernised information systems within the
NHS. In addition to their properties as digital objects, the value of EPRs
derives from their networkedness in terms of allowing wider sharing of

48

patient information within and between organisations locally, regionally
and nationally. ‘Networkedness’ in this respect refers to the extent to
which EPR technology can be used to exchange information about
patients and their care between NHS Trusts, which represent semi-
autonomous organisational units under the direction of the government’s
Department of Health. EPRs were intended as enablers of a range of
beneﬁts and transformative improvements to the ways in which
healthcare is delivered including, for example, virtual consultations;
however, a key driver for the large scale development of EPRs was the
opportunity for secondary uses of patient data to support care
commissioning, administration and research.

User experience
Clinicians agreed that EPRs had a number of advantages over traditional
paper-based records including:

.

.

.

.

.

.

improved legibility
improved reliability (not getting lost or misplaced)
concurrent access by multiple individuals entailing advantages in
terms of time (reduction of delays in tracking records and accessing
information) and human resources which, in turn, impacted
positively on responsiveness and timeliness of patient care
supporting ﬂexible and convenient ‘anytime, anywhere’ access
providing more and better quality clinical information about patients
information sharing with professionals in other organisations.

Nonetheless, despite providing EPR access for local GPs and hospitals
via web portal, it was found that access was little used in practice,
thereby challenging the idea that EPRs might fulﬁl a knowledge
management function. In addition, a continued need for paper
documents to bridge between healthcare Trusts meant that forms and
letters had to be scanned into electronic format, creating a demand for
additional human resource. (The continued reliance on paper indicates
that EPR systems remain largely local and are not integrated between
Trusts, as originally envisioned by NPfIT.) Users also complained that
scanned documents were inconvenient to use because of the time taken
to open individual ﬁles and the difﬁculty of ﬁnding detail within them.

Technological issues
The extent to which EPRs beneﬁt users relates not only to content and
scope of information sharing but also to technical aspects of EPR use
including interweaving of access and use with work practices. These
considerations are closely tied to users’ roles and healthcare settings.
For example, computing hardware presents physical considerations for
EPR use in terms of whether there are enough devices and whether they
are available in the locations they are needed, and the suitability of
hardware, whether desktop or mobile devices, for particular settings and
clinical functions. There are also challenges with ﬁtting EPR use around
unpredictable work practices characteristic of urgent care settings

Part 1 – Sociotechnical systems design

49

Part 1 – Sociotechnical systems design

50

including those where users might be reliant on adequate broadband
connection for network access.

Distribution of benefits
The beneﬁts and disadvantages of EPRs are not equally distributed, with
hospital consultants acknowledging that junior doctors experience
greater difﬁculties in gaining access to computers to view records, and
that they do not have secretarial support to input clinical entries into
EPRs on their behalf. In this respect secretaries shield consultants from
having to alter their work practices too much and so consultants
experience the beneﬁts of the EPR without as many disadvantages.

Access to hardware also tends to operate hierarchically, so if there is a
shortage of computers, there is an informal expectation that nurses,
administrators, Allied Healthcare Professionals and junior doctors should
give up a computer they are using for a consultant. Although not
necessarily experienced as a disadvantage by secretaries, the use of
EPRs in hospital settings is reliant on their work, and it is
acknowledged that anticipated efﬁciency gains from EPRs in terms of
clinical activity must be offset against increased demands for secretarial
time.

Users also reported that EPR use is associated with new information
requirements and work responsibilities, reﬂected, for example, in an
increase in recording compared with paper records. In addition, to have
an input into the ongoing development of EPRs users must invest time
in keeping up to date with technical developments, and in training and
familiarising themselves with the functionalities of the system.

Further technological concerns
An information-driven NHS entails increased demand for greater
quantities of and more granular data. This is brought about in part by
demand for internal and external accountability for use of resources and
quality of care, and EPRs are envisaged as essential in supporting this
strategy. In this respect EPRs reﬂect non-clinical purposes and agendas
in addition to supporting clinical practice, including provision of data
quantifying clinical activities and numbers and types of patients treated.
This, in turn, generates a requirement for diagnostic and treatment
information to be captured in coded and structured form, for example
using Read codes, an alphanumeric coding scheme for representing
diagnoses and treatments within electronic patient records, or drop down
menus which provide a ﬁxed set of options for documenting aspects of
care. This places a demand on clinicians to record information in
structured form, which they may not otherwise capture in this way for
their own clinical purposes. Importantly, restricting options for recording
not only facilitates standardised clinical recording; it also constrains
representation of reality and can therefore be used to present
organisational activity in a better light.

The shift to an evidence-based medicine agenda is reﬂected in the use of
EPRs as a mechanism to support the standardisation of clinical practice.

In addition, the use of EPRs to encourage standardisation is linked with
clinical audit and associated targets for care quality improvement, which
acts as a form of performance management in relation to clinical
practice.

Clinicians’ experiences of EPR use are strongly mediated both by their
technical aspects and by the shaping of the technology that derives from
non-clinical agendas, as outlined above. These embedded interests serve
as mechanisms to enforce standards in clinical activity, not only through
focussing attention on the achievement of targets and measurable
indicators of good practice but also by selectively enabling and
constraining particular recording practices which then feed into clinical
behaviours.

Unsurprisingly users who have an interest in clinical research and
management related uses of data are more concerned about the
availability of structured data than with narrative-style recording, with
structured data more easily aggregated, while for clinical purposes
narrative recording, for example in clinical notes, remains important.
This highlights the tension between what is clinically useful and support
for broader organisational objectives.

Insofar as non-clinical managerial and other agendas are embedded
within the design of EPRs they are impossible to resist and as such
power effects are played out through a variety of controls over clinical
and non-clinical behaviours, mediated by the EPR. This pervasiveness
therefore has implications for the ability of users to challenge or avoid
non-clinical agendas.

The embedding of EPRs within clinical activity means that EPR use
tacitly acts to stabilise the form of these technologies and legitimise the
agendas of which they are a part. For example, their use to support
performance measures such as those used in national league tables
provides reciprocal legitimacy for both performance management
mechanisms and for the EPR.

EPR use has become part and parcel of what clinicians do on a daily
basis not only on a clinical level but also in terms of non-clinical
activities around performance reporting and accountability. Once
established, such an entity may be taken for granted, hidden from view
and closed to debate and scrutiny. This is particularly the case for
infrastructures, which are by deﬁnition intended to become part of the
‘background’.

However, it should be noted that users are not necessarily passive in this
respect, and may use EPRs to ‘play the system’ to their advantage, for
example, by using data from EPRs as evidence to support their own
performance appraisals and also to exploit the ways in which EPRs
focus attention on particular measures to present their organisation in
the best light.

(Source: Goff, 2014)

Part 1 – Sociotechnical systems design

51

Part 1 – Sociotechnical systems design

1.6 Summary
In the ﬁrst half of this Part, you studied the development of the
sociotechnical systems perspective, its history and its relevance for planning
successful IT systems. In particular, you looked at the nature of the
sociotechnical approach, tools for mapping sociotechnical systems, and the
ETHICS approach as an example of an effective sociotechnical design
framework. Sociotechnical systems design has been criticised for its approach
to power issues, which was partly addressed in the Scandinavian tradition
discussed following the ETHICS framework.

In the second half of this Part, it was argued that a deeper and broader
understanding of power and recognition of its complexity, forms and use are
crucial for planning successful IT systems. Technology can be an instrument
of power, a source of power, a symbol of power and a system of power. It is
important to appreciate all these aspects of technological power when dealing
with complex sociotechnical systems of which IT systems are an example.

Answers to activities
Please note that some activities do not have answers, if they are open-
ended, simply give instructions for reading or media use, or if a comment
is given in the text.

Activity 1.1
The deﬁnition of a successful system used in Block 1 Part 1 was one which:

achieved what was intended of it; it was operational at the time and cost
that was planned; the project team and the users are pleased with the result
and they continue to be satisﬁed afterwards.

(Fortune and Peters, 2005, p. 13)

The success of the overall Crossrail project (now known as the Elizabeth
Line) is undoubtedly assured, insofar as the line is now operational and
seems to be well-used; although it was over-budget and very late. The
question of the success of the IT system supporting the (western) part of the
construction is more complex. The case study shows huge change in the IT
needs of Crossrail over time, partly due to the changing nature of the
construction and partly due to changes in technology. However, as far as we
can tell from the case study, Fordway managed to deal with both of these
forms of change, remained the main IT support for the project for more than
a decade, and the wider project was a success. Of course, the article is from a
particular perspective, and an alternative view might present a more negative
approach (though for large-scale public IT systems, Computing magazine,
from which this case study was taken, are quite good at reporting negative
impact). So, from everything we know, the project can be considered
successful.

52

Part 1 – Sociotechnical systems design

Activity 1.2
We have chosen to map out the Crossrail IT system (Box 1.1), and our
versions of the systems map and the T-O-P diagram follow (see Figures 1.5
and 1.6). Your diagrams may look rather different – it’s in the nature of
systems diagrams that they can be drawn in many different ways. As
speciﬁed in the question, we have used the systems map in Figure 1.5 to
develop the T-O-P diagram in Figure 1.6, but we have chosen to group items
somewhat differently in the latter diagram. This is because a systems map in
the ﬁrst place shows structure, of how the different components of the system
can be grouped together, and my initial feeling was that it made sense to
group together these areas.

53

Part 1 – Sociotechnical systems design

Crossrail
eastern half

Tunnelling tech

Sensors

Boring
machine

Users

Kier

BAM
Nuttall

Peak of
1300

Ferrovial

Subcontractors

Connectivity

Ethernet

4G

Offline

Wi-Fi

Back office tech

Building
info mgt

Office
automation

3D modelling

Crossrail
construction IT
systems

Evolving
tech

Process

Upgrade

Service
reviews

Office
moves

Support

Tech changes

Mobile

Laptops

Sensors

Body cams

Wearables

Tablets

Cloud

Offsite
servers

Services

15TB
data

Contractors

Signalling

Rail

Specialist IT
services

A systems map of Crossrail
(west) construction IT systems,
as seen by Fordway

Figure 1.5 Systems map of the Crossrail construction IT systems

54

Part 1 – Sociotechnical systems design

Organisation

Fordway

Specialist
contractors

Office
moves

Primary
contractors

Crossrail
Ltd

Service
reviews

People

Users

Kier

Peak of
1300

BAM
Nuttall

Ferrovial

Subcontractors

Fordway

Richard
Blandford

Other
staff

Technology

Back office
tech

Cloud

Specialist
IT services

Mobile and
wearables

Connectivity

Figure 1.6 T-O-P diagram of the Crossrail construction IT systems

55

Part 1 – Sociotechnical systems design

Activity 1.3
Again we are mapping the Crossrail IT system here. We have not drawn out
the diagram but in our view the framework can be applied (to the new
system, and the process of conversion) in the following way:

. Technology: a wide range of both front-line, back-ofﬁce and specialist IT

services for the variety of contracts involved in Crossrail

. People:Fordway’s staff supporting the work; their own contractors; a wide

variety of users

. Processes/Procedures: changing processes over time to support different

IT needs within Crossrail

. Goals: to ensure that Crossrail had necessary IT support, changing as

appropriate with developments in technology, for the length of its project

. Culture: not clearly speciﬁed in the description, but a strong sense of

problem-solving and willingness to try new things

. Buildings/Infrastructure: various changing wireless networks; growing use
of the cloud for data storage and processing; the long and growing tunnel
as the core physical site.

Activity 1.4
You will hopefully have your own view on which framework is most useful.
Clearly we found all four to be useful or they wouldn't be included! We have
described some of them in more detail than others, and if you really wanted
to get to know them better you would need to read the original papers and
books where they are introduced. If you are interested, we ﬁnd the T-O-P
framework very useful for its simplicity; but we admire the two extended
versions by Mitroff and Linstone, and by Challenger and Clegg. The Mitroff
and Linstone version is rather older, from a classic book, so the authors like
it a lot; but we see a lot of promise in the more recent Challenger and Clegg
framework, as it includes components which the others lack and in particular
deals with infrastructure in an interesting way. The COAT framework (by
Checkland and Holwell) was produced by authors whose work we greatly
respect, and this particular framework is appreciated by many people, but for
us it doesn’t feel quite so useful as the other approaches, as the idea of
‘conceptualisation’ feels rather abstract – it is a useful idea philosophically
but has less practical relevance in terms of making sense of the nature of a
system.

Activity 1.5
There is not much discussion to be had here, except to say that the process of
reading a detailed academic article, and understanding how to critically
engage with it, is a crucial one. Even if your time is short, we recommend
spending the time doing this activity – it’s really useful! The process of
critical engagement is vital with texts of all sorts, including such things as
newspaper articles and web pages, just as much as academic articles.

56

Part 1 – Sociotechnical systems design

Activity 1.6
(a) In our view, the main aspects of the sociotechnical approach, throughout

its 70-plus year history, are: its focus on the interrelated nature of
technical, organisational and human aspects of systems; an emphasis on
open systems; and a broadly humanistic attitude, emphasising
empowerment and participation.

(b) The ﬁrst two of these are clearly relevant to contemporary IT systems.

The approach of empowerment and participation also seems to me to be
highly important, in the way that the networked and fast-reacting nature
of modern IT systems is only increasing rather than diminishing.

Activity 1.7
The author doesn’t work in these sorts of companies, so they don’t relate to
their own experience; but they have certainly had experiences in their own
work of problems caused by lack of user participation. Of the four case
studies, the one which is particularly useful is Rolls Royce Aerospace, as that
is a large and important organisation, and Mumford’s work there seemed to
have a really positive effect. However we know from reading other work by
Enid Mumford that the Digital Equipment Corporation was one of her own
favourite experiences, and that certainly had a big impact.

Activity 1.8
Once again our analysis is based on the Crossrail IT system. The ﬁrst step to
notice here is that the question asks you to look at redesigning the existing
system using ETHICS – that is, the system which has just been created. It
might seem early to do this, but every new system has its ﬂaws; and a
prospective approach would certainly help with informing other large-scale
rail projects (e.g. HS2 and the mooted Crossrail 2, which goes north to south
in London).

(a) To us a starting point would be to draw together all the key stakeholders
in the Crossrail IT system, and to ask them whether the new system is
adequate for their needs or if it needs to be modiﬁed. Given the recent
work, perhaps this would be best considered as an incremental process
rather than a radical redesign. Crossrail was a huge project, and the IT
systems within it were huge. Therefore, establishing the scope (stages 1
and 2 of ETHICS) is really important here. How much of the system
could really have been redesigned?

(b) Crossrail was a huge project, and the IT systems within it were huge.

There is an issue around who counts as key stakeholders for any kind of
retrospective redesign process, especially whether the term mostly covers
direct users of the IT systems (i.e. contractors) and Crossrail Ltd, or also
wider groups such as rail users.

57

Part 1 – Sociotechnical systems design

(c) A reasonable expected outcome to the use of ETHICS here would be
some modiﬁcations to the revised system. The supportive nature of
Fordway’s work means that they were somewhat reactive to the needs of
Crossrail and the contractors, and technology was ever-changing, but the
way they worked could perhaps have been different.

(d) It is worth wondering what might have happened had ETHICS had been
used from the start of the project. But any hypothetical redesign, or
project drawing on the lessons of Crossrail, ought to take a participatory
approach such as that of ETHICS from the start.

Activity 1.9
Stahl’s article is not the easiest of reading, but we think it is worthwhile and
interesting. His critique of Mumford’s work is from a very sympathetic
starting point. He acknowledges that she took a highly participative stance,
was strongly ethically grounded, and that she drew on some aspects of
critical theory. His basic criticism, in my view, is that she didn’t quite go far
enough, and that she worked entirely within existing power structures. We
have seen much stronger critiques of Tavistock Institute-inspired work which
ﬁnds the latter claim quite a strong indictment, some of which formed the
basis of the Collective Resource Approach that is discussed in section 1.2.1,
but Stahl intends it much more gently.

In the parts of the paper which you were not asked to read, he goes on to
discuss the ethical basis of the ETHICS approach, and to suggest ideas on
morality taken from information ethics, which seem quite a fruitful way to
proceed.

Activity 1.10
We came up with the following:

1 In the ﬁrst project, a simple initial prototype was created which allowed
participants to see over a period of weeks what worked for them (in text
messaging) and what didn’t. Experience with this prototype led to the
creation of a variety of trial smartphone shells with physical buttons,
allowing participants to try different alternatives. Eventually they moved
to a conventional smartphone but with a dedicated messaging app – the
article notes that ‘ideas and decisions while they were present let them see
their impact and experience the consequences of their decisions’
(Maartmann-Moe et al., 2022, p. 199).
In the second project, participants were enabled to design their own
technologies (household robots), through being provided with a variety of
design materials and access to a simple robot. Participants were
encouraged to discuss potential uses with others, and subsequently shared
their designs with each other, shaping both the environment within which
the robot would be used and the physical functionality required of the
robot.

58

Part 1 – Sociotechnical systems design

2 The techniques of potential user groups of a new technology creating

prototypes, through discussion and through shared creative activities, are
ones which could readily be used in certain conventional IT systems
settings. This is especially the case with the shared discussions found in
the ﬁrst project. Also relevant are the more general principles in the
article that ‘users can participate in design and make design decisions’
and by which the ‘users can imagine alternative solutions if they are
presented with technical alternatives and possibilities relevant to the
current (problematic) technical solution and can use their own capabilities,
experiences, and language to explore and evaluate the technological
possibilities’ (Maartmann-Moe et al., 2022, p. 201).

3 The idea of participants having any sort of involvement in the technical

aspects of IT systems design might be challenging in some organisations,
especially if there is a strong sense of hierarchy and/or separation between
the IT function and the wider organisation. The creative techniques of the
second project might also be considered in some organisations to be
insufﬁciently serious, although this could perhaps be circumvented
through suitable facilitation.

Activity 1.11
A sociotechnical system is a system comprised of interacting social and
technical components organised so as to facilitate speciﬁc goal-directed
behaviour. Exchanges occur within the system and between the system and
the wider context and dynamics of the environment.

Activity 1.12
We came up with the following:

Since a sociotechnical system is comprised of three principal components –
technology, people and organisation (or enterprise) – there are three main
sources of power in them: technical power, human power and organisational
power. Each of these sources interacts with the others and the interaction is
bidirectional (or two-way): technology impacts on people (for example, by
shaping the way tasks are carried out and goals are achieved) and people
impact on technology (for example, by determining which technologies are
developed and which ones end up being used). Furthermore, both technology
and people are impacted on by organisational concerns which are, in turn,
impacted on by technology and people. However, the issue is more complex
than this since the nature and extent of the impact of each of these sources
varies considerably; furthermore, each of these three sources of power needs
to be ‘unpacked’ so as to expose the multiplicity of factors constituting them.

59

Part 1 – Sociotechnical systems design

Activity 1.13
We came up with the following:

Advertising, marketing and branding are pervasive in contemporary Western
society. These forces have a substantial role in shaping perceptions of what
constitutes success and status in a capitalist economy and in promoting
consumption of technological products. In order for products to be consumed
it is necessary to promote a positive view of them – hence, their being seen
as ‘liberating’ and ‘life enhancing’ – or at least one that is ‘neutral’ if and
when focus shifts to consideration of the possible ‘side effects’ of their use.

Activity 1.14
We came up with the following:

Some people believe that attempting to change a person’s attitudes or
behaviour is always unethical, or at least questionable. In the extreme, this
view holds that persuasion can lead to indoctrination, coercion and
brainwashing. Others, by contrast, have argued that persuasion is
fundamentally good, the basis of ethical leadership and necessary for
democracy. Perhaps the truth lies between the extremes. Persuasion is
sometimes ethical and sometimes unethical; it depends how it is being used
and to what end. Certainly, for persuasion to be ethical, the audience must be
informed of the persuader’s intent; to do otherwise is to engage in
propaganda.

Activity 1.15
In our opinion, in addition to designers, there are two other possible
candidates: (1) the owners and distributors of the technology, and (2) the
users of the technology. Exactly who is at fault, and to what degree, will vary
on a case-by-case basis.

Activity 1.16
We came up with the following:

The owners of businesses and senior management tend to be able to exert
greater inﬂuence on the development of persuasive technologies than users at
lower levels in the organisational (or enterprise) hierarchy. This difference in
stakeholder power relations means that the IT in IT systems will tend to be
designed in such a way as to reﬂect the objectives of the former group and to
effect ‘buy-in’ by the latter group, thereby contributing to perceptions that the
IT system works well, and is successful, to all members of the organisation
(or enterprise).

60

Part 1 – Sociotechnical systems design

Activity 1.17
You might have mentioned that power might be exerted by technical support
staff:

.

.

.

.

having skills that cannot be replaced easily
occupying a position in the organisation that is critical for the day-to-day
functioning of the organisation
having the ability to disrupt the functioning of the organisation
using data gathered within the organisation as evidence to support their
own performance, a case of ‘playing the system’.

Activity 1.18
We came up with the following:

On the one hand, ‘discipline’ has connotations of control (as in notions of
‘self-discipline’) and is associated with the threat or carrying out of
punishment (e.g. when a schoolteacher disciplines a student for bad
behaviour, or an employee is subject to a disciplinary hearing on account of
allegations of misconduct). On the other hand, the term ‘discipline’ is used to
refer to an ordered body of knowledge (e.g. the disciplines of mathematics,
philosophy or science).

Foucault’s insight was to see that the two aspects are inextricably interwoven,
i.e. that bodies of knowledge function to order, regulate and control human
bodies, and that the ability to control behaviour via the threat or carrying out
of punishment itself constitutes a form of knowledge.

Activity 1.19
We came up with the following:

The power relations are likely to be dynamic and highly complex. Tackling
the implications of this will depend to a large extent on which approach to
system planning dominates in an organisation.

Whichever approach is adopted, from a power perspective a primary task
when reviewing and reassessing the environments in which an organisation
operates is to carry out a review and reassessment of the power relations that
apply. Any changes to these features should then be evaluated for their
signiﬁcance, recognising, of course, that this is a largely qualitative activity,
and therefore ultimately subjective, even if a person or group claims they are
entirely objective. This assessment can then provide the basis for a
formulation/reformulation of the approach to system planning – be it
emergent, designed, etc., and, if necessary, the (re)deployment of power.

61

Part 1 – Sociotechnical systems design

Activity 1.20
We came up with the following:

(a) Since the EPR system is an IT system and therefore a sociotechnical
system, it has social and technical components which are sources of
social and technical power, respectively. The most obvious source of
social power are the users of the system – consultants, secretarial staff,
administrators, junior doctors and nurses, and consultants tend to exercise
greater power than other users (for example, with respect to access to
EPRs and computers in situations involving competition for resources).
Social power is exercised by NHS Trusts over patients through the
production, control and sharing of EPR records to support care
commissioning, administration and research, and by the Department of
Health over NHS Trusts. In addition, the design of the EPR system will
tend to reﬂect the agendas and interests of dominant stakeholder groups
within the organisation (or enterprise) – consultants and senior
management – and constitutes another source of social power. Sources of
technical power in the EPR system include computer hardware and
software, including the standardised EPR format, and network
infrastructure.

(b) One feature of the EPR system which facilitates its functioning

coercively, relates to embedding of EPRs within clinical activity. This
results in EPR use legitimising the agendas of non-clinical management
and enabling clinical auditing for quality control and performance
management. The stakeholders inﬂuenced include both clinical
practitioners (junior doctors, nurses, consultants) and non-clinical
secretarial and administrative staff.
Another feature of the EPR system which facilitates its functioning
coercively, relates to codiﬁcation, structuring and standardisation of
clinical recording practice (e.g. using Read codes and drop-down menus).
The stakeholders inﬂuenced are clinical practitioners and, as stated in the
extract, ‘restricting options for recording not only facilitates standardised
clinical recording; it also constrains representation of reality and can
therefore be used to present organisational activity in a better light’
(Goff, 2014) – in short, in pursuit of agendas set by dominant
stakeholders within the organisation (or enterprise).

62

Part 1 – Sociotechnical systems design

(c) One feature of the EPR system that should have facilitated its ability to
function as a persuasive technology is the shift from paper-based to
electronic records, offering increased legibility, reliability, concurrency of
access (and hence, greater efﬁciency), anytime/anywhere access,
increased quantity and quality of information, and information sharing
between health care professionals. The introduction of EPRs should have
persuaded a range of stakeholders, both clinical and non-clinical, to
embrace their use, however, this did not happen. The EPR system tended
to be little used by GPs due to a continued need for paper documents –
which had to be scanned – to bridge information-sharing between NHS
Trusts resulting in an increased human resource demand and a decrease in
efﬁciency. In addition, although working practices of consultants were
largely unaffected by the introduction of the EPR system (consultants
being shielded from negative impacts of the technology through provision
of secretarial support), junior doctors were faced with increased
workloads due to having to be trained in how to use the new system and
input clinical entries themselves. Finally, technical constraints on access
to EPRs (e.g. the necessity of a broadband connection for network
connectivity) also negatively impacted on the persuasiveness of the
system in terms of use by clinical practitioners.

63

Part 1 – Sociotechnical systems design

(d) As an example of the operation of Lukes’ ﬁrst dimension of power
(decision-making power), consider how the introduction of EPRs by
senior management required junior doctors to take on increased
workloads due to having to be trained in how to use the new system and
input clinical entries themselves. (Consultants were shielded from this
additional workload through provision of secretarial support.) It is highly
unlikely that junior doctors would have decided to increase their
workload of their own accord. In terms of Lukes’ second dimension of
power (non-decision-making power), consider how the embedding of
EPRs within clinical activity resulted in EPR use, legitimising the
agendas of non-clinical management while simultaneously limiting the
possibility of clinicians to make decisions about how things should get
done. Another example relates to the introduction of codiﬁcation,
structuring and standardisation of clinical recording practice: although the
stakeholders affected were clinical practitioners, it was dominant
stakeholders within the organisation (or enterprise) – i.e. senior
management – who were responsible for introducing such practices,
arguably with a view to limiting the scope of clinicians to decide what
information to record and how it should be recorded. With respect to
Lukes’ third dimension of power (symbolic or ideological power),
consider how the use of EPRs became day-to-day practice for clinicians,
‘not only on a clinical level but also in terms of non-clinical activities
around performance reporting and accountability’ (Goff, 2014, p. 328).
Crucially, once established, EPRs were ‘taken for granted, hidden from
view and closed to debate and scrutiny’ (Goff, 2014, p. 328), thereby
becoming part of the ‘background’. Insofar as the embedding of EPRs
within clinical activity enabled their use to tacitly stabilise the form of
these technologies and legitimise the agendas of which they were a part,
the preferences of clinicians were being shaped by the ‘powerful’,
i.e. senior management.

(e) As an example of the exercise of disciplinary power, consider the

requirement for diagnostic and treatment information to be captured in
coded and structured form entailing the standardisation of records;
clearly, this represents a case of knowledge−power (or knowledge/power)
in Foucault’s sense of ‘regimentation’ or ‘drilling’. Yet another example
concerns the embedding of non-clinical managerial and other agendas in
the design of EPRs, which made them impossible to resist, and which
enabled power to be exercised through a variety of controls over clinical
and non-clinical behaviours mediated by the EPR.

As an example of the contestation of disciplinary power, consider how some
clinicians used EPRs to ‘play the system’ to their advantage, for example, by
using data from EPRs as evidence to support their own performance
appraisals and also to exploit the ways in which EPRs focus attention on
particular measures to present their organisation in the best light in various
‘ﬁgures’.

You might have come up with different answers.

64

Part 1 – Sociotechnical systems design

References
Allen, T. (2022) ‘From cables to cloud: how IT changed while building the Elizabeth
Line’, Computing. 9 June. Available at: https://www.computing.co.uk/interview/
4050916/cables-cloud-building-elizabeth-line (Accessed: 1 March 2024).

Avgerou, C., Ciborra, C. and Land, F. (eds) (2004) The social study of information
and communication technology. Oxford: Oxford University Press.
Avison, D. and Fitzgerald, G. (2006) Information systems development. 4th edn.
Maidenhead: McGraw-Hill.

Baxter, G. and Sommerville, I. (2011) ‘Socio-technical systems: from design methods
to systems engineering’, Interacting with Computers, 23(1), pp. 4–17.
Beer, S. (1981) The brain of the ﬁrm. Chichester: John Wiley.

Berdichevsky, D. and Neunschwander, E. (1999) ‘Toward an ethics of persuasive
technology’, Communications of the ACM, 42(5), pp. 51–58.
Bødker, S., Ehn, P., Sjögren, D. and Sunblad Y. (2000) ‘Co-operative design –
perspectives on 20 years with “the Scandinavian IT Design Model”’, Nordic
Conference on Computer-Human Interaction. Stockholm, October.

Challenger, R. and Clegg, C. (2011) ‘Crowd disasters: a socio-technical systems
perspective’, Contemporary Social Science, 6(3), pp. 343–360.
Checkland, P.B. and Holwell, S. (1998) Information, systems and information
systems: making sense of the ﬁeld. Chichester: John Wiley.

Cherns, A. (1976) ‘The principles of sociotechnical design’, Human Relations, 29(8),
pp. 783–792.

Clegg, C. (2000) ‘Sociotechnical principles for system design’, Applied Ergonomics,
31(5), pp. 463–477.

Clegg, C., Ellis, B., Wyatt, J., Elliot, B., Sinclair, M. and Wastell, D. (2010) A
manifesto for a socio-technical approach to NHS and social care IT-enabled business
change – to deliver effective high quality health and social care for all. London:
British Computer Society. Available at: https://www.bcs.org/media/3479/st-manifesto-
260810.pdf (Accessed: 2 April 2024).

Clegg, S. R. (1989) Frameworks of power. London: SAGE Publications Ltd.
Coakes, E., Willis, D. and Lloyd-Jones, R. (eds) (2000) The new socioTech: grafﬁti
on the long wall. London: Springer.

Davis, M., Challenger, R., Jayewardene, D. and Clegg, C. (2014) ‘Advancing socio-
technical systems thinking: a call for bravery’, Applied Ergonomics, 45(2A),
pp. 171–180.

Eason, K. (1988) Information technology and organisational change. London: Taylor
and Francis.

Eason, K. (2007) ‘Local sociotechnical system development in the NHS national
programme for information technology’, Journal of Information Technology, 22(3),
pp. 257–264.

Eason, K. (2014), ‘Afterword: the past, present and future of sociotechnical systems
theory’, Applied Ergonomics, 45(2A), pp. 213–220.
Ehn, P. (1988) Work-oriented design of computer artefacts. Sweden: Umea University
Institution for Information Processing.

Ehn, P. and Kyng, M. (1987) ‘The collective resource approach to systems design’, in
G. Bjerknes, P. Ehn, and M. Kyng (eds) Computers and democracy: a Scandinavian
challenge. Aldershot: Gower Publisher, pp. 19–57.

65

Part 1 – Sociotechnical systems design

Emery, F. and Trist, E. (1973) Towards a social ecology: contextual appreciation of
the future in the present. London: Plenum.

Fogg, B.J. (2003) Persuasive technology: using computers to change what we think
and do. New York: Morgan Kaufmann.
Fortune, J. and Peters, G. (2005) Information systems: achieving success by avoiding
failure. Chichester: John Wiley.

Fox, W. (1990) ‘An interview with Eric Trist, father of the Sociotechnical Systems
Approach’, Journal of Applied Behavioral Science, 26(2), pp. 259–279.
Galliers, R. and Swan, J. (1999) ‘Information systems and strategic change: a critical
review of business process reengineering’, in R. Galliers and W. Currie rie (eds)
Rethinking management information systems: an interdisciplinary perspective.
Oxford: Oxford University Press, pp. 361–387.

Goff, M. (2014) ‘Electronic patient records and beneﬁts to clinicians: an actor-
network study of a technological innovation in the NHS’, in K.K. Kimppa, D.
Whitehouse, T. Kuusela and J. Phahlamohlaka (eds) 11th IFIP TC 9 International
Conference on Human Choice and Computers, Turku, Finland, July 30–Au gust 1,
2014. IFIP Advances in Information and Communication Technology 431. London:
Springer, pp. 320–332.

Greenbaum, J. and Kyng, M. (eds) (1991) Design at work: cooperative design of
computer systems. Hillsdale, NJ: Lawrence Erlbaum.

Hirschheim, R. and Klein, H. (1994) ‘Realizing emancipatory principles in
information systems development: the case for ETHICS’, MIS Quarterly, 18(1),
pp. 83–109.
Hobsbawm, E. (1952) ‘The machine breakers’, Past & Present, 1(1), pp. 57–70.
Reprinted in E. Hobsbawm (1999) Uncommon people. London: Abacus, pp. 6–22.

Kensing, F. and Blomberg, J. (1998) ‘Participatory design: issues and concerns’,
Computer-Supported Cooperative Work (CSCW), 7(3), pp. 167–185.
Loyens K. and Maesschalck, J. (2014) ‘Whistleblowing and power’, in D. Lewis, R.
Moberly and W. Vandekerckhove (eds) International handbook on whistleblowing
research. Cheltenham: Edward Elgar, pp. 154–173.

Lukes, S. (1974) Power: a radical view. London: Macmillan.
Lukes, S. (2005) Power: a radical view. 2nd edn. London: Palgrave.

Lundin, P. (2010) ‘Designing democracy: the UTOPIA-Project and the role of the
Nordic labor movement in technological change during the 1970s and 1980s’, in J.
Impagliazzo,P. Lundin, andB. Wangler (eds) History of Nordic computing 3: third
IFIP WG 9.7 Conference. Stockholm (Sweden), 18–20 October. Stockholm: HiNC 3,
pp. 187–195.

Maartmann-Moe, H., Bråthen, H., Joshi, S.G. and Bratteteig. T. (2022) ‘Design
decision competence: supporting user participation in design decisions’, Proceedings
of the Participatory Design Conference 2022 – Volume 2 (PDC ‘22). New York,
August. New York: Association for Computing Machinery , pp. 196–202. Available
at: https://doi.org/10.1145/3537797.3537874

Mitroff, I. and Linstone, H. (1993) The unbounded mind: breaking the chains of
traditional business thinking. Oxford: Oxford University Press.

Mumford, E. (1983) Designing human systems for new technology: the ETHICS
method. Manchester: Manchester Business School.

Mumford, E. (1995) Effective systems design and requirements analysis: the ETHICS
approach. Basingstoke: Macmillan.

66

Part 1 – Sociotechnical systems design

Mumford, E. (2006) ‘The story of socio-technical design: reﬂections on its successes,
failures and potential’, Information Systems Journal, 16(4), pp. 317–342.

Norman, D.A. and Stappers, P.J. (2015), ‘DesignX: complex sociotechnical systems’,
She Ji: The Journal of Design, Economics, and Innovation, 1(2), pp. 83–106.
Pava, C. (1986) ‘Redesigning sociotechnical systems design: concepts and methods
for the 1990s’, Journal of Applied Behavioral Science, 22(3), pp. 201–221.

Porra, J. and Hirschheim, R. (2007) ‘A lifetime of theory and action on the ethical
use of computers: a dialogue with Enid Mumford’, Journal of the Association for
Information Systems, 8(9), pp. 467–478.
Ramage, M., Murray, N., Fortune, J. and Ali, M. (2024) ‘Part 1: successful IT
systems’, TM353 Block 1. Milton Keynes: The Open University.

Sale, K. (1996) Rebels against the future: the Luddites and their war on The
Industrial Revolution: lessons for the computer age. London: Quartet Books.
Stahl, B. (2007) ‘ETHICS, morality and critique: an essay on Enid Mumford’s socio-
technical approach’, Journal of the Association for Information Systems, 8(9),
pp. 479–490.

Sundblad, Y. (2010) ‘UTOPIA: participatory design from Scandinavia to the world’,
History of Nordic Computing 3: Third IFIP WG 9.7 Conference. Stockholm
(Sweden). In J. Impagliazzo, P. Lundin and B. Wangler (eds) Revised selected
papers. London: Springer, pp. 176–186.

Trist, E. (1981) ‘The sociotechnical perspective: the evolution of sociotechnical
systems as a conceptual framework and as an action research program’, in A. Van de
Ven and W. Joyce (eds) Perspectives on organization design & behavior. New York:
John Wiley, pp. 19–75.

Von Bertalanffy, L. (1950) ‘The theory of open systems in physics and biology’,
Science, 111(2872), pp. 23–29.
Wastell, D. (2011) Managers as desigactvners in the public services: beyond
technomagic. Axminster: Triarchy Press.

White, S., Wastell, D., Broadhurst, K. and Hall, C. (2010) ‘When policy o’erleaps
itself: the ‘tragic tale’ of the integrated children’s system’, Critical Social Policy, 30
(3), pp. 405–429.

67

Part 2 – Information technology
systems methodology

Simon Bell, Zoe Tompkins and Steve Walker

Part 2 – Information technology systems methodology

Part 2 – Information technology systems
methodology

Introduction
Welcome to this two-week segment of the module dedicated to information
technology (IT) systems methodology. As information technology is the
backbone of organisations, information technology systems methodology
guides the design, analysis and optimisation of IT systems to help businesses
meet their objectives.

Before we go any further we wish to clarify the terminology as the terms
‘information technology systems’, ‘IT systems’, ‘information systems’ and
‘IS’ are often used interchangeably when discussing methodology. In order to
simplify the language in this Part, we will simply refer to information
systems or the abbreviated IS.

So far you have been looking at a range of IT domains of interest but, none
of this makes any sense if you are not able to assess why you need IT, what
it is needed to do, what it will look like, how you will evaluate it and how
you will know if it is successful or not. All of these items come under the
domain of methodology, as businesses require a systematic and structured
approach for the development, implementation and management of IT
systems. Information systems (IS) methodology serves as a roadmap for IT
projects, supporting informed decision-making, managing risks and focusing
on successful solutions that align with strategic plans.

The IT needs to be carefully planned and organised and this is the domain of
method. So, it is vital, if we are to maximise our chances of achieving a
successful and sustainable IT system, that we have an appropriate method to
help us take a holistic view that encompasses the entire ecosystem of
technology, people and process, and data. Before we go any further, it is
important to distinguish between the often-interchangeable terms of method
and methodology, and the nuances between their meanings. The online
version of the Oxford English Dictionary’s deﬁnition of ‘method’ states the
following:

Method: A way of doing anything, esp. according to a deﬁned and regular
plan; a mode of procedure in any activity, business etc.

(Oxford Dictionary, 2024)

In the context of IT, an IT system method therefore typically refers to a
speciﬁc procedure, technique or routine to perform a task or achieve a goal.
The method outlines the steps, best practices and acts as a guide to
practitioners.

It is clear to us that in any successful IT system there needs to be a clear idea
of what is needed, a method to do it and a practical roll-out of the plan.
Similarly, the practice needs to conform to a method, and the method should
allow the original idea or theory to be realised. To us, this provides a clear

71

Part 2 – Information technology systems methodology

and logical sequence from idea to method to practice, and from practice to
method to idea. It is methods that provide the framework for systematic task
achievement.

What then is the role of methodology? This is, after all, the title of this Part
as we explore IT systems methodology. The online Oxford English Dictionary
states the following:

Methodology: The branch of knowledge that deals with method generally
or with the methods of a particular discipline or ﬁeld of study.

(Oxford Dictionary, 2024)

In the context of this module, methodology can be seen as the study of
processes, i.e. the study of the different methods. Methodology might be said
to occupy a place between theory and practice.

The relationship between theory and practice, therefore, also needs
consideration as part of an introduction to method and methodology.
Returning to the online Oxford English Dictionary, their deﬁnitions are as
follows:

Theory: An explanation of a phenomenon arrived at through examination
and contemplation of the relevant facts; a statement of one or more laws or
principles.

(Oxford Dictionary, 2024)

Practice: The actual application or use of an idea, belief, or method, as
opposed to the theory or principles of it.

(Oxford Dictionary, 2024)

So, if we think about theory, method and practice, there is a sequence (see
Figure 2.1). Theory is an abstract idea or principle – for example the idea of
a new application for social media. Methods provide a systematic plan for the
realisation of this idea, and practice is applying the methods to concrete
actions like writing the code, marketing the product, and signing up the users.

In this sequence the position of method is very important and literally central
(as you can see in Figure 2.1). Ideas cannot be made into sensible and
rational actions without methods. The results of practice are not clearly
relatable to the original idea without logical and well-organised methods.
Clear and well-articulated methods – procedures and systematic plans – are
vital for success. It is important to recognise that a well-thought-out plan is
the ﬁrst step; deviating from or ignoring the project plan increases the risk of
project failure, so the project plan must also be followed to increase the
likelihood of success. So, in order to maximise the chances of success our
methods need to be ﬁt for purpose and, with IS, for a method to work it
needs to be capable of adapting, evolving and changing with the changing
landscape of the sociotechnical requirements. So this means that methods, if
they are to work successfully, need to be planned and designed, and this is
where methodology comes in.

72

Part 2 – Information technology systems methodology

Theory

Method

Practice

Figure 2.1 Practice, method and theory

In practice, the terms used in the ﬁeld of information systems can vary and
because of this possibility for confusion, it is advised to refer to the
deﬁnitions in the context of which you encounter them. For example, ‘Agile’
is often referred to as a methodology rather than a method, and as you will
see explained later in this Part, we have chosen to refer to the ‘Agile
approach’. Throughout this Part we are going to be studying the way in
which IS methods have changed over time and circumstance. To understand a
particular method also involves engaging with methodology. A methodology
provides guidelines on when and how to apply speciﬁc methods with the aim
to enable an approach to the management and implementation of IT systems.

If we use the deﬁnitions of ‘theory’, ‘methodology’, ‘method’ and ‘practice’
as set out above as our starting point, IS methods can be seen as a means by
which IS theory becomes practice and, conversely, the means by which
practice can inform theory.

IS methods are produced by people in both the academic and business worlds
who have different needs, and these needs have changed over time; they have
had to change in order to provide the best means of achieving IT success.
Later in the Part you will be introduced to the Agile Manifesto (2001), a set
of values and principles in response to widespread dissatisfaction with
sequential approaches to developing software.

In this Part of TM353 we shall be focusing on the importance, contribution
and value, as well as the weaknesses, problems and issues of IS methods.

2.1 Methodology and IS methods: why are they
important for IT success?
In their book Information Systems Development, Avison and Fitzgerald
provide an overview of methodology. They refer to methodology as needing
to include:

73

Part 2 – Information technology systems methodology

. A series of phases:

‘from feasibility study through to review and maintenance. The phases are
expected to be carried out as a sequential process. Phases have subphases.’

. A series of techniques:

‘which include ways to evaluate costs and beneﬁts of different solutions
and methods to formulate the detailed design necessary to develop
computer applications.’
. A series of tools:

‘to help the systems analysts in their work. By tools, we mean […]
software packages that aid some aspects of the approach.’

. A training scheme:

‘so that all analysts and others new to their roles and responsibilities could
adopt the standards suggested.’

. A philosophy:

‘perhaps implied rather than stated, which might be that “computer systems
are usually good solutions to organizational problems and processing”. We
suggest this because the assumption is that the inevitable consequence of
using most methodologies is a new computer application to perform the
required functions.’

(Avison and Fitzgerald, 2006, pp. 35–36)

Activity 2.1 (self-assessment)

10 minutes
How would you deﬁne methodology? Try to write your own deﬁnition and
share in the TM353 Module discussion forum.

2.1.1 Waterfall model
The traditional approach to execute IT projects is the waterfall model. Most
literature refers to the waterfall model as a traditional software development
methodology that emphasises a linear progression. The waterfall model
follows a series of steps built on clear requirements, which lead to the build,
testing and deployment of a project – as illustrated in Figure 2.2. It is still
widely used today despite criticism of lack of ﬂexibility, slowness and an
inability to cope with the dynamic nature of software development.

Avison and Fitzgerald also describe the waterfall model as comprising a
number of stages: feasibility study, system investigation, systems analysis,
systems design, implementation, and review and maintenance (2006,
pp. 31–35). Reﬂecting on the use of different terms by these two leading
authorities to describe the same model illustrates the array of terminology.

74

Part 2 – Information technology systems methodology

Requirements

Design

Implementation

Verification

Maintenance

Figure 2.2 Waterfall model

Activity 2.2 (self-assessment)

15 minutes
Search online to ﬁnd a different diagram to illustrate the Waterfall model.
What do you notice about the similarities and differences between your
model and that in Figure 2.2?

2.1.2 Method and methodology language
As we have already shown one challenge is the vast array of terms used
when considering method and methodology. The confusion stems from how
the deﬁnitions have evolved over time and their frequent interchangeable use.
It is not uncommon for ‘methodology’ to be used when it should be ‘method’
and vice-versa. This has led to a blurring of the terms despite their distinct
meanings. It is therefore advisable to have your own deﬁnitions based on
your personal understanding.

For now, we want to provide you with the testimony of two practitioners who
will help us to understand why the IS method and its study is important for
IT success.

75

Part 2 – Information technology systems methodology

Activity 2.3 (exploratory)

25 minutes
Go to the module website and listen to Audio 2.1. You will hear two experts
talking about what IS method is and why it is important.

In what way do the two views – from business and from academia –
converge and diverge?

In what ways do methods focus the mind on success?

2.2 The history of the development of IS method

Those who cannot learn from history are doomed to repeat it.

(George Santayana, 1905, p. 284)

Santayana’s quote might be seen as being a theme or motif for this Part of
TM353. Methods used today emerged as part of a selective process –
successful elements endured, less successful elements faded away. As an
overview, we suggest that if an IS method is to be successful it needs to be
relevant to the requirements of the time. However, there is always a danger
of discarding that which is useful or of repeating past mistakes. This section
provides an overview of IS method development over time. In order to do
this we will set out the timeline (1960s–present day) and describe some of
the major changes in methodology thinking as it has evolved. In this process
we will characterise the various stages with the kinds of projects and
practitioners which they were involved with.

Activity 2.4 (exploratory)

10 minutes
Go to the module website and read Avison and Fitzgerald (2003a) ‘Where
now for development methodologies?’.

Avison and Fitzgerald deﬁne four eras in the evolution of Information
Systems Methodology (ISM). We want to explore these in a little detail to
see why methods were needed and to know more about what constituted
success.

76

Part 2 – Information technology systems methodology

2.2.1 Example from era 1: pre-methodology (1960s and
1970s)
In the pre-ISM period, as deﬁned by Avison and Fitzgerald, early IT systems
were synonymous with computer packages developed to undertake large and
complex calculations for military or industrial purposes. Such applications
were produced by programmers who were often working to standards
developed by scientists who were concerned with an area of analysis called
Operations or Operational Research (OR). To get a sense of the mindset of
this time it is useful to have an overview of what OR was. Houlden provides
the following comment:

In some ways operational research is a method of approach to problems;
looking at the whole system ﬁrst and considering whether altering the
factors directly involved in the problem posed will affect other parts of the
system (e.g. if the problem was ‘How can the stock of machine spares be
reduced?’ the operational research scientist would ﬁrst consider what would
be the effect on production due to any delays in repairing machines if the
stores were unable to supply the parts when they were required). Most of
the problems tackled by operational research have this character. Once these
interactions have been understood, the operational research scientist can
then look into the ﬁner detail of the problem if this is necessary.

While there have been isolated instances of operational research being used
earlier this century, it only began to be recognised as a separate branch of
science during the 1939–45 war. Groups of scientists of various disciplines
were thrown together to study problems […]

During the study of these and many other wartime problems the operational
research scientists found that they needed to develop new mathematical
techniques and it was realised that both the method of approach and these
techniques would be applicable to industrial as well as military problems.

(Houlden, 1962, pp. 1–3)

The Operational Research scientists who were involved in delivering
successful solutions to the problems of their time were involved in the very
origins of computing. They are now well known for their work in wartime
code breaking, but in a less conspicuous manner, they were producing some
of the early, underlying fundamentals for future ISM.

Activity 2.5 (exploratory)

20 minutes
There were many famous code breakers based at Bletchley Park, which is
near the OU Walton Hall campus. For example, Betty Webb was just 18
years old when she arrived at Bletchley. Her role begin with the cataloguing
of encrypted German radio messages. Betty also was responsible for ensuring
that the enemy did not know that their code had been broken and she
paraphrased intelligence information obtained from broken German and
Japanese military codes. Whilst Joyce Aylard operated the Bombe machine,
designed by Alan Turing to crack the Enigma code. Aylard was responsible
for testing different combinations to break the Enigma code.

77

Part 2 – Information technology systems methodology

There were also Global South secret intelligence actors who mattered during
World War II. What were called developing countries are sometimes referred
to today as the Global South, or the Global Majority or Low and Middle-
Income Countries (LMIC’s).

Find out the story of one these ﬁgures mentioned above, or another scientist
of your choice who helped to shape ISM and share their history in the
TM353 Module discussion forum.

Activity 2.6 (exploratory)

5 minutes
To gain an insight into the spirit of the pre-methodology age – the
Operational Research era – listen to Audio 2.2, located on the module
website. In this audio, our speaker, Professor Jeff Grifﬁths of the University
of Cardiff, gives his vision of the ﬁrst era.

2.2.2 Example from era 2: early methodology (late 1970s and
early 1980s) – systems development life cycle
In terms of method, the System Development Life Cycle (SDLC) is a
procedural interpretation of logical stages considered necessary to ensure a
successful IS innovation. Unlike the waterfall model, with the SDLC there is
an explicit circularity to the method. The cycle may begin with Planning and
end with Maintenance but the Maintenance stage is expected to lead back to
further Planning and a new iteration of the cycle. The method is perpetual in
diagrammatic form (see Figure 2.3).

Planning

Analysis

Maintenance

Systems
Development
Life Cycle

Design

Coding

Testing

Figure 2.3 Example of the System Development Life Cycle (SDLC) approach

Another early software development method, created in the 1970’s, was the
Jackson Structured Development (JSD). JSD begins by focussing on the
speciﬁcation, then proceeds to the design phase with documentation as a core
underpinning element. The approach highlights the importance of early
analysis and understanding of the system requirements before development
commences. Through a formal, top-down approach, tasks were decomposed

78

Part 2 – Information technology systems methodology

into smaller steps and entity diagrams, so facilitating a graphical model of the
actions to perform and the order. The beneﬁts of this approach, with an
emphasis on analysis and design, encouraged rigour in speciﬁying system
behaviour. However following formal methods is time consuming due to the
level of detail required.

Activity 2.7 (exploratory)

5 minutes
Go to the module website and listen to Audio 2.3 where Professor Ken Eason
of Loughborough University talks about the second era.

2.2.3 Example from era 3: the methodology era (late 1980s
and 1990s)
This period was one of major innovations in method, following the
consideration of the methodological weaknesses of the life cycle and
waterfall approaches. During the late 1980s and early 1990s, a plethora of
methods which were labelled ‘Structured’ emerged. Probably most prominent
was Structured Systems Analysis and Design Method (SSADM), see
Figure 2.4, but other methods and methodologies emerged such as Data-
Orientated approaches, prototyping, Object-Orientated techniques (OO),
participative approaches, strategic methods and systems approaches. The most
famous systems approach was Soft Systems Methodology (SSM).

One method introduced around 1993 to the UK was the Yourdon Systems
Method, which originated in the 1970’s when Ed Yourdon sought to manage
the complexity of large-scale software systems. The method focused on
problem identiﬁcation and detailed requirements-gathering using diagrams
such as data ﬂows and entity-relationship diagrams in order to gain a clear
understanding of the functionality of a system before proceeding to design.
Documentation was vital and was expected to be maintained throughout the
entire design, build and implementation, and was intended to support future
maintenance.

Another major innovation which aimed to increase the success level of ISM
was the development of multi methodology. Multi methodology was the
result of a perceived need for methods to be blended and combined, so that
the technical precision of data analysis could be combined with the value of
stakeholder feedback. An example of a multi method is Multiview, and this is
discussed in more detail later in this chapter.

SSADM, as presented here, shows some similarities to the life cycle model:
procedural stages follow on from each other. Planning is followed by
feasibility then, in the ‘Full Study’ period, requirements are assessed and
speciﬁed and this is followed by a logical system speciﬁcation. Full study is
followed in turn by ‘Development’ which includes the physical design of the
system. Outside the SSADM process proper, construction and testing of the
physical design is undergone and, ﬁnally, the system is produced. All these

79

Part 2 – Information technology systems methodology

stages are monitored by management. Key to the structure of the approach is
the inclusion of this management control – IT success required the control of
company and/or government management. Earlier methods showed a lack of
accountability, tending to be technical projects. With the advent of the third
era success of methods required that greater control and linkage to
organisational requirements be included.

i

g
n
n
n
a
l
p

c
i
g
e
t
a
r
t
S

y
t
i
l
i
b
i
s
a
e
F

SSADM

n
o
i
t
a
c
i
f
i
c
e
p
s

s
t
n
e
m

e
r
i
u
q
e
R

n
o
i
t
a
c
i
f
i
c
e
p
s
m

e
t
s
y
s

l
a
c
i
g
o
L

s
i
s
y
l
a
n
a
s
t
n
e
m

e
r
i
u
q
e
R

n
g
i
s
e
d
l
a
c
i
s
y
h
P

t
s
e
t
d
n
a
t
c
u
r
t
s
n
o
C

n
o
i
t
c
u
d
o
r
P

Full study

Development

Management control

Figure 2.4 SSADM

Activity 2.8 (exploratory)

5 minutes
Go to the module website and listen to Audio 2.4. Professor Trevor Wood-
Harper of the University of Manchester Business School talking about era 3.

2.2.4 Example from era 4: post-methodology (2000s onward)
In their book, Information Systems Development: Methodologies, Techniques
and Tools (2003a), Avis and Fitzgerald acknowledged that the development of
IT system method is continuously evolving, and called the fourth era, which
commenced at the beginning of 2000, an era of post methodology or
methodology reﬁnement. During this period the new methodological
approaches were Agile, including Scrum and Dynamic System Development
Method (DSDM). These methods were seen as a response to the increasingly
complex computer systems, and at the time, Agile was regarded as a step
change. Looking back, there is an argument to say that Agile was simply a
development of SDLC and that there were no true new methods developed in
era 4. Perhaps this era reﬂected the fading passion for methodology, as it was

80

Part 2 – Information technology systems methodology

a milestone of 50 years of repeated failures. Innovation during this period
therefore tended to be an adaptation of previous methods, and by the 2000s
there was a notable drop-off in new methodology. As with previous eras, one
way to get a sense of what was thought at the time and how method was
advancing is to listen to a practitioner from that period reﬂecting on the
methods of the time.

Activity 2.9 (exploratory)

5 minutes
Listen to Audio 2.5 in which Martyn Oswin of The Open University talks
about era 4. This can be found on the module website in the Block 2 Part 2
resources.

Activity 2.10 (self-assessment)

20 minutes
Compare the methods, ideas and ‘spirit’ of each era:

(a) When you listen to the various voices of the professionals, how do you
think they related to the four eras portrayed by Avison and Fitzgerald?
How does each voice compare and contrast to their era?

(b) If you had to label three signiﬁcant features for each era and voice what

would they be?

(c) How has the idea of success changed over time?

In concluding this section, the following observations can be made. The
innovation of IS method would appear to conform to a maturity model. Early
methods focus primarily on the technical aspects of the domain. As the IT
domain is more rigorously explored and mapped, and as social concerns
begin to be recognised as being core and not peripheral to IT success, more
and more elements are included in the methods, which expand to meet this
growing requirement for social and technical completeness. Ultimately, some
methods become multi methodologies incorporating many additional features.
The tendency towards, and characteristics of, ‘multi methodology’ will be
discussed later.

81

Part 2 – Information technology systems methodology

2.3 Method shift
Undeniably methods change over time. A primary result of the study of
methods over time reveals this change. For an expert view on how it felt to
live through this change, listen to an author of an approach which emerged in
one era and transitioned to another, and who experienced the nature of this
change.

Activity 2.11 (exploratory)

20 minutes
Listen to Audio 2.6, in which Ken Eason talks about the changing patterns of
IS eras. This can be found on the module website in the Block 2 Part 2
resources.

What are the main features of IS methods innovation? What are the common
traits of the various transitions? Do you think that each era could be seen as
a separate reality or world? Why or why not?

2.4 What were the main features of IS methods
in the four eras?
The purpose of this brief section is to show how the main features contained
in the different eras compare and contrast, and also to get a sense of what
was considered important for the methods to address in order to be successful
in the four eras.

As you read this section think about the technical or social success features
of each era. Why were these era features successful and, most importantly,
are they as relevant now as they were at the time when they were ﬁrst
conceived?

What follows is exploratory and illustrative and not intended to be
exhaustive.

2.4.1 Era 1: queues
Era 1 focuses on applying mathematical modelling to industrial processes.
Historically the methods shown here were ripe for inclusion in computer-
based systems, mainly because of the ease of ﬁt between routine
mathematical calculation and computer programme routines. One example
from this era is queue processing – a representative example of quantitative
tools which can be used to make sense of complex issues. As Houlden states:

a queue problem has the following basic components and there may be one
or more of each:

(a) Input, speciﬁed by the type of unit and the time distribution of arrivals

of units into the system.

82

Part 2 – Information technology systems methodology

(b) Queue (which may be of zero length). The queue discipline describes

how the units leave the queue.

(c) Service channel, which serves the units and is speciﬁed by the

distribution of service times.

To solve the problem, appropriate measures of the state of the system are
calculated, such as:

Average

(i) number in the system

(ii) queue length

(iii) waiting time

Probability of

(i) n units in the system

(ii) More than n units in the system

(iii) waiting time of t to t+dt

(iv) waiting time greater than t

(v) service channels being idle

These measures are then used to decide the optimum conditions.

(Houlden, 1962, pp. 77–78)

Some of the terms may be unfamiliar but we hope that you have an insight
into the mindset of the era and the kinds of issues it was dealing with. We
have selected queue theory as an example of OR (operational research)
modelling which is as relevant now as it was in 1962, but our point is more
to do with the spirit of how complex and data-driven problems could be
solved. This is not a pre-computer era. IT was around but it tended to be
large mainframe machines with very primitive user interfaces. Social issues
are not included in analysis. Some questions for you to ponder:

. Are precision and logic as important for successful methods today as they

were in era 1?

. Was it an issue for era 1 (and today) when technical precision excluded

all other perspectives?

Activity 2.12 (exploratory)

5 minutes
Go to the module website and listen to Audio 2.7. In this piece you will hear
Professor Jeff Grifﬁths talk about the thinking involved in queue theory, its
emergence from telephony, and the core principle: precision.

83

Part 2 – Information technology systems methodology

2.4.2 Era 2 early methodology: perspectives and cycle
For era 2 we have turned to a popular text book of the time by Olle
et al. (1989). This is the period of early methodology and they emphasise the
problems of the word methodology early on by saying:

It is recognized that the term methodology should be used to mean ‘a study
of method’. However, the common practice over the past decade has been
to use ‘methodology’ in place of ‘method’ and this text adopts the line of
least resistance.

(Olle et al., 1989, p. 1)

From the quote above, we can see that Olle et al. have set out their stall and
we can assume that methodology in this phase and for these authors means
method. To get a sense of the approaches applied, here are some segments
taken from Olle et al.:

An examination of traditional systems methodologies shows that they have
tended to have differing emphases. Methodologies based on specifying the
supposed functions of an information system are regarded as having a
process orientated perspective. Methodologies derived from database
technology have always emphasized what is referred to as a data orientated
perspective.

There has been a further realization that the time dependent (or temporal)
aspect of an information system have not been given proper consideration
in methodologies emphasizing the data and process perspectives. A third
perspective has therefore developed, which is referred to here as the
behaviour orientated perspective […] A list of business activities would
have a process orientated perspective. A list of events would have a
behaviour orientated perspective and a list of attributes would have a data
orientated perspective. A cross-reference component, which indicates the
attributes generated by a process, would have both data and process
orientated perspectives […] There are many ways of breaking down what is
usually referred to as the information system life cycle […] Most
information systems methodologies are concerned with only a part of the
life cycle, namely that leading to a design product, which can be
constructed for operational use […] For the purposes of presentation in this
text, the following four stages in an information system life cycle are
shown […]

1 information systems planning,
2 business analysis,
3 systems design, and
4 construction design.

(Olle et al., 1989, pp. 12–13)

Olle et al. are progressing the idea of method from a core emphasis on
mathematical precision and data to a range of different perspectives including
behaviour and process. The method for developing an information system
includes a cycle of activities, and the information system is not purely
technical; business and other social issues are also important.

84

Part 2 – Information technology systems methodology

It could be argued that in era 2, success in method application includes focus
on business needs and requires a range of perspectives to be integrated. Some
questions to ponder:

. Could an issue for era 2 be the process stability implicit within the

methods, i.e. are the methods stable and capable when used in real world
situations?

. The methods appear good at dealing with predictable and stable functions.
What happens when surprising things happen? Can the method cope?

2.4.3 Era 3 methodology: soft systems
Era 3 is the richest in the diversity of features, tools and techniques
connected to the wide range of methods which multiplied over this period.
We want to present you with an example of the kinds of issues which this
method dealt with at that time and, as any sample is going to be a
simpliﬁcation of the entirety, We have chosen a highly signiﬁcant element –
soft systems. This is a critical inclusion. If era 1 tended to mathematical
modelling and era 2 to life cycle and strands of different analysis, era 3 had a
strong inﬂection towards understanding sociotechnical complexity and mess.
Methodologists had begun to realise that information systems development
required a considerable understanding of social as well as technical systems.
The term sociotechnical systems became mainstream at this time and the need
to be able to comprehend and include social concerns within method became
of great concern. One response to the growing awareness of the complexity
of the interface between IT and social systems was for the development of
highly complex and integrated approaches such as SSADM (already
mentioned). Another strand was to develop means to understand the rich and
complex messiness of social contexts. In this latter aspect Soft Systems
Methodology (SSM) was hugely inﬂuential. A mass of literature covers the
topic. John Naughton, writing in an earlier OU module captured the
sevenfold nature of SSM as follows:

Stage 1 of an inquiry begins, not with a ‘problem’ as such, but with a
‘mess’, or with an organisational setting in which someone thinks problems
may reside. This can often be something rather general and vague, such as
‘We don’t have a mechanism for deciding what sort of products we should
be making in ﬁve years’ time: can you help?’; or ‘There’s something wrong
with morale in the works department’. And even if the analyst is initially
faced with what appears to be a clearly identiﬁed problem (like, for
example, the statement ‘Our warehouse is too small for our present scale of
operations: we want to decide where to build a new one’), he will usually
want to do some further exploration of the company setting before being
committed to the view of the situation implied by the initial statement. The
basic idea is that every problem exists in a context, and that context may be
perceived differently by different people.

The ﬁrst task, therefore, is to assemble a representation or picture of this
situation which is rich in both quantitative or factual, and qualitative and
subjective information.

[…]

85

Part 2 – Information technology systems methodology

Having assembled a Rich Picture of the situation (stage 2), the analyst then
reﬂects upon it […] [the analyst] seeks general patterns or aspects
(sometimes called Issues) which express or encapsulate characteristics of
the situation. This leads to stage 3 and a search for systemic ways of
viewing the situation, ways which are articulated by naming hypothetical
systems, known as Relevant Systems in the terminology of the approach.

[…]

The identiﬁcation of Relevant Systems is a crucial stage in the inquiry,
because it forces the analyst to choose to view the situation in a particular
way. […] The remaining stages are, in fact, basically designed to trace the
logical consequences of taking the particular view encapsulated by the
adopted Relevant System. This is achieved byﬂ eshing out the initial notion
of the system ﬁrst (stage 3) by describing it precisely in words (in a Root
Deﬁnition) and then (stage 4) by deriving an activity model (called a
Conceptual Model) which contains all the essential activities which the
notional system would logically have to perform. […] This abstract model
is then, in stage 5, compared with what is perceived to exist in the actual
problem situation.

[…]

The comparison stage will, in general, throw up discrepancies between the
real-world situation and the abstract model of stage 4. The outcome of the
comparison stage thus generates […] a reassessment of […] the problem
setting, and in turn perhaps some different ideas for Relevant Systems; and
secondly, what might be called an Agenda of possible changes which, in
stage 6, is debated with the people who are involved in the problem
situation. The purpose of the debate is to identify changes which are agreed
by the participants to be both feasible and desirable. Any changes which
survive this process of scrutiny are then carried forward to the ﬁnal stage
for implementation (stage 7).

This method appears rather complicated at ﬁrst sight, and experience
suggests that many people are initially thrown by its circular structure and
rather idiosyncratic terminology. But if one penetrates beneath this surface,
the underlying logical structure of the approach is really quite simple.

[…]

The point of developing a fairly detailed, logically derived model is that it
forces the analyst to trace the logical consequences of his [or her] chosen
way of viewing the situation. These consequences are then discussed with
the people involved, and they rather than the analyst are the ones who
decide whether the changes suggested by the earlier analysis are worth
implementing. If (as sometimes happens) those involved do not think that
any of the suggested changes are both feasible and desirable, then this is
effectively tantamount to saying that they do not agree that the Relevant
System which generated them is, in fact, relevant in which case the analyst
will have to go back and choose a different system. The analysis process is
then repeated again.

(Naughton, 2000, pp. 101–103)

86

Part 2 – Information technology systems methodology

SSM is shown in outline in Figure 2.5.

1.
The problem
situation:
unstructured

7.
Action to improve
the problem
situation

6.
Feasible, desirable
changes

2.
The problem
situation:
expressed

5.
Comparison of
4 with 2

Real world

Systems
thinking

3.
Root definitions of
relevant systems

4a.
Formal system
concept

4.
Conceptual
models

4b.
Other systems
thinking

Figure 2.5 Soft Systems Methodology

John Naughton provides an overview of the main elements of SSM. More
importantly he provides a sense of the recognition that any system, if it is to
be functional, cannot afford to make assumptions about the people who will
engage in all aspects of its design, application and output.

We have already noted that the third era experienced a plethora of approaches
ranging from specialised methods like SSM and vast, composite methods like
SSADM. There were also attempts to blend even these and in 1993, in an
attempt to combine methods in an über method, the UK Central Computer
and Telecommunications Agency (CCTA) produced a booklet which used
SSM as a part of SSADM. The authors noted:

The purpose of this volume is to provide a general description of how to
apply Soft Systems Methodology (SSM) to an SSADM feasibility study.
The guidance aims to show how personnel involved in feasibility studies
can use SSM concepts to deﬁne comprehensive business requirements so
that systems developed using IS planning inputs and SSADM techniques
more fully meet the needs of the organisation.

(CCTA, 1993, p. 1)

The spirit of the third era was comprehensive, systematic and holistic. The
period is replete with examples of methods which attempted to contain within
themselves tools and techniques which would accommodate just about every
imaginable eventuality. A problem arising from this was that the methods
became so complex and so intricate in their detail that they became rather
unwieldy. Wastell noted just such issues in 1996:

87

Part 2 – Information technology systems methodology

In this paper a case study is presented in which a mail order company made
an attempt to implement a well-known methodology, Structured Systems
Analysis and Design Methodology (SSADM). Far from facilitating the
development process, SSADM encouraged a rigid and mechanical approach
in which the methodology was applied in a ritualistic way which inhibited
creative thinking. The argument is thus, that methodology, although its
inﬂuence may be benign, has the potential to operate as a‘ social defence’,
i.e. as a set of organizational rituals with the primary function of containing
anxiety. The grandiose illusion of an all-powerful method allows
practitioners to deny their feelings of impotence in the face of the daunting
technical and political challenges of systems development.

(Wastell, 1996, p. 25).

An issue within era 3 would appear to be the sheer self-importance of
methods. Apparently self-contained with components for all eventualities,
what chance is there that the method user would expect the unexpected or
manoeuvre to adjust to surprise?

With such problems emerging, if IS methods were to result in successful
change, changes in the development of methods and in the ways in which
methods could be applied were necessary.

2.4.4 Era 4 post-methodology: Agile
The fourth era, spanning from the mid-1990s to the current period is of the
longest duration. The emergence of the Agile methodology represents a shift
in practice towards adaptability, collaboration and customer focus. The
origins of Agile are captured in the Agile Manifesto (2001), and we explore
these guiding principles in Section 2.7.

The Agile methodology characterized by an iterative and incremental
approach includes concepts such as Kanban and Scrum. However in terms of
the Avison and Fitzgerald historical analysis, this is one era and as well as
containing the outcomes of all previous eras some new methods have also
emerged in an ever-evolving landscape.

88

Part 2 – Information technology systems methodology

2.4.5 How eras change
In simple terms, each era could be said to have some outstanding features:

. Era 1: operations research background, scientiﬁc/objective-orientated.

Precision is key.

. Era 2: process, data and behaviour linked in a life cycle. Imposing a

rational structure on human activity is central.

. Era 3: massive and complex methodologies often with a focus on

understanding human activity systems, allowing human activity to impose
order on the logical process. Sociotechnical systems is the watchword.
. Era 4: lightweight and team focused. The main themes are collaboration

with a focus on rapid iteration of software.

So far we have spent some time looking at how things have changed over
time and how that change can be viewed in process terms. However, when
dealing with complex issues of IS development, surely some things remain
fairly static? Don’t some elements of the IS process stay put?

For example an information system of any type will have people, technology
and organisation.

At a high level of abstraction there are many features which IS methods
share. The next activity is designed to help you in identifying some of these.

Activity 2.13 (self-assessment)

15 minutes
State your own thoughts about each era and then compare your ideas to mine.

Era features

Comment
on era 1

Comment
on era 2

Comment
on era 3

Comment
on era 4

What is successful?

What is less useful?

What does the era
contribute to methods
today?

2.5 Review and reﬂection
This Part has so far focused on a number of questions and concepts:

2.1 What is methodology and what are IS methods? Why are they
important for IT success?
2.2 What is the history of IS methods?
2.3 What were the main features of IS methods in the four eras?

89

Part 2 – Information technology systems methodology

The objective of these sections has been to introduce you to the background
and experience of methodology. In the following sections we will introduce
some similar ideas but this time the focus will be much more on how
methodology is used in the contemporary era; this will have implications on
how you might select and use method.

Activity 2.14 (self-assessment)

10 minutes
This is an opportunity for you to review your own perspective of what IS
method is good for in the process of developing new IT.

Imagine you are involved in a project which is developing an information
system for holding hospital patient records, similar to the Block 2 Part 1
NHS Electronic Patient Records System.

What useful feature taken from each era might you include and why?

2.6 Self-adaptive systems and Multiview
This Part has introduced the idea of methodology, method and the eras in
which various kinds of methods in Information Systems analysis and design
ﬂourished. Methods have evolved and developed over the years.

In the following sections we will consider the ways in which IS method in
particular has evolved. For example in recent times, IS method has developed
from the innovations of the past to assemble the highlights into what we
might call ‘hybrid methods’.

In this Part we are concerned with the hunt for method success (the ‘survival
of the ﬁttest’ to continue with the evolution idea) in the contemporary era
and the potential that assembled methods offer. We are also interested in the
ways in which contemporary assembled methods are applied. Initially, we
want to look at a multi method called Multiview (MV) – which has managed
to survive through several eras by adapting, developing, assembling and
disassembling different components. Following this, we will explore a more
contemporary approach – Agile – and compare its progress and success to
that of Multiview.

Activity 2.15 (self-assessment)

5 minutes
From your reading of this section, set out three features of a successful
method.

What do you think is the most important feature and why?

90

Part 2 – Information technology systems methodology

2.6.1 Multiview: a multi method
Multiview (MV) is an example of a multi method, although perhaps not
surprisingly it is also sometimes known as a multi methodology.

Multi methodology originated in the 1980s and has a speciﬁc role in the
history of method development. Mingers and Brocklesby described multi
methodology as follows:

The essence of multi method is to utilize more than one method, or part
thereof, possibly from different paradigms, within a single intervention.

(Mingers and Brocklesby, 1996, p. 491)

A paradigm can be taken to mean a body of knowledge. An intervention is an
episode of method use – a speciﬁc IT project for example. The idea of the
multi method is to try to make the method ﬁt the context of use by
addressing complex problems more effectively. Mingers and Brocklesby go
on to suggest that multi method can occur in one of three forms:

First, […] a method is most appropriate for a context matching its
assumptions. This implies that, generally, only one method will be used in a
particular intervention.

Second, […] different whole methods may be used within the same
intervention to deal with different issues, or to provide different viewpoints.

Third, the most complex form of multi method is where methods are split
or partitioned into components and these are combined together to construct
an ad hoc multi method suitable for a particular problematic situation.

(Mingers and Brocklesby, 1996, p. 492)

In each of the three examples used above the attempt is made to make the
method (and the tools and techniques which it contains) match the context
where it is to be used.

Let's explore the idea of multi method using Multiview. Multiview contains a
number of characteristics:

1 It is assembled from a number of different and contrasting methods.
2 The methods contain a number of techniques and tools.
3 MV contains within itself a reﬂective capacity and users of the approach

are able to change it and adapt it to changing circumstances. In this sense
it can be reassembled to need by the user community.

4 MV is adjusted and changed in the light of changed circumstance.

In this sense MV can be said to conform to all three of Mingers and
Brocklesby’s deﬁnitions and is therefore a good example of a multi method.

MV changed over time to meet the needs of a changing world, and the
history of MV illustrates this. The development of MV is set out here in
terms of three phases. Each one of these phases is demonstrative of a stage in
the innovation of the method.

91

Part 2 – Information technology systems methodology

The main interest here is in the most recent form of MV, but for context we
will brieﬂy visit the earlier presentations of the method.

2.6.2 Multiview 1 (MV1)
Multiview 1 (MV1) was developed for students working in Computer
Science, and Finance and Accountancy at the University of East Anglia and
had its ﬁrst major presentation in the Antill and Wood-Harper book of 1985,
Systems Analysis. As MV1 had already been in use since the early 1980s this
places the method’s origin in era 2. MV1 was applied by ﬁnal year students
who carried out action research (roughly meaning to work with clients and to
include clients in the research team) for small businesses. Antill and Wood-
Harper’s initial intention with MV1 was for the method to provide a multi-
view of a given context.

MV1 introduced the ﬁve elements of the method and these are shown in
Figure 2.6.

The authors explain the stages of the Multiview methodologys and the inter-
relationships between them as follows:

The boxes refer to the analysis stages and the circles to the design stages.
The arrows between them describe the inter-relationships. Some of the
outputs of one stage will be used in the following stage. The dotted arrows
show other major outputs.

(Avison and Wood-Harper, 1991, p. 102)

In an MV1 intervention social concerns are reviewed ﬁrst (in the human
activity system adapted from SSM). Next a functional model is created based
on the data elements of the context (entities and functions). Following this
the method can develop along any or all of three routes: (1) reviewing and
integrating a sociotechnical model; (2) designing the user interface; and/or (3)
setting out the technical subsystems (listed to the right in the diagram).
Figure 2.6 demonstrates the ambition of the approach and also the
vulnerability of the approach to confusion. There is a great deal to take in.
Although MV1 provided for a range of perspectives it was limited in its
ﬂexibility. It was a recipe approach to IS, a rich and various recipe but
tending towards being used as a procedure, a lengthy and complex set of
steps.

92

Part 2 – Information technology systems methodology

Inter-relationships

Outputs

1.
Analyse
human
activity

Human
activity
system
model

2.

Analyse
information
entities
and
functions

Function
model

3.
Analyse and
design
Socio-technical
system

Role set (will my job change?)

People tasks (what will I have
to do?)
Social subsystem (how will it
effect me?)

Entity
model

Computer task requirements
+ Role set
+ People tasks

4.
Design User
human-computer
interface

Technical
requirements

Entity
model

5.
Design
Technical
subsystem

Inputs and Outputs
necessary to support
non-application
subsystems

Figure 2.6 The Multiview methodology (Avison and Wood-Harper, 1991, p. 102)

Activity 2.16 (self-assessment)

5 minutes
MV1 emerged in era 2. How do you feel it compares to the dominant
methods from that era discussed earlier?

Application (what will it do?)
Information retrieval
(what information will I get?)
Control (what errors
are detected?)
Monitoring(is the system
performing as specified?)
Recovery(what happens
when it goes wrong?)
Database monitoring(how do
I maintain the database?)
Database (what data
are involved?)

93

Part 2 – Information technology systems methodology

2.6.3 Multiview 2 (MV2)
The second mode of Multiview (MV2) was introduced in 1998 (Avison et
al., 1998) – towards the end of era 3, the main methodology era – although it
had been suggested in an earlier publication (Avison and Wood-Harper 1990).
The key issue for the methodology was to be seen in the ﬂuidity of the
relationships between the analyst, the situation and the method. In this
revised and simpliﬁed version three foci – organisational analysis, a distinct
sociotechnical analysis phase (where social and technical alternative IT
solutions and objectives are compared and contrasted) and a detailed
technical design are complemented and drawn together by the emerging
information model. The resulting four constituents are mediated by the
analyst and this mediation includes a freedom to include or avoid some
elements (see Figure 2.7). The elements of MV2 could also be seen as being
less sequential with no apparent series. MV2:

offers a systematic guide to any ISD intervention, together with a reﬂexive,
learning methodological process, which brings together the analyst, the
situation and the methodology.

(Avison and Fitzgerald, 2003b, p. 509).

Organisational analysis

Information modelling

Mediation

Sociotechnical analysis
and design

Technical design and
construction

Figure 2.7 The Multiview methodology

MV2 provided a strong sense of innovation from a recipe approach to
reﬂective practice, a freer and more thoughtful form of analysis – emphasised
by the inclusion of mediation. MV2 remains a distinct path and approach for
IS developers.

94

Part 2 – Information technology systems methodology

Activity 2.17 (self-assessment)

5 minutes
Identify three main differences between MV2 as shown in Figure 2.7 and
SSADM as presented in section 2.2.2.

2.6.4 Multiview 3 (MV3)
The third mode of Multiview (MV3) emerged in the late 1990s – at about the
same time as MV2. MV3 evolved from the basic MV1 structure to meet the
needs of non-ICT specialists concerned with the potential which IS offered.
Leading from this, MV3 was a method designed to include the participation
of communities in the development of information systems which concerned
them. This stakeholder participation, with its explicit focus on inclusion and
wider engagement in the analysis and design process, found contemporary
equivalence in a number ofﬁ elds, for example public concern about climate
change and community interest in policy making. Much of the innovation in
MV3 was in response to this trend for greater stakeholder inclusion.

MV3 was developed for use in the Global South. MV3 has three primary
foci, all of which can be seen as being more widely of value – for example in
contexts of high risk, or high complexity or where there is a lack of existing
IT structure or resources.

Firstly, MV3 aims to sustain the tradition of the multiple-perspective method
(a theme which was ﬁrst expressed in era 2 and was noted in section 2.4.2).
The inclusion of multiple perspectives is of importance if the method is to
have value for diverse stakeholders in different cultural and technical
contexts. This, in turn, raises the problem of requiring the method user to
engage with a wide range of analysis, design and development skills. To
some extent this is an issue for all multiple-perspective methods.

Secondly, MV3 seeks to evolve method as a planning and design approach
applicable for the use of non-specialists in IS.

Thirdly, as a means to improve reﬂectivity in practice, MV3 was engineered
to provide those engaged in analysis and design with an explicit means to
record and reﬂect the perspective of the analyst/analyst group from within the
IS enquiry. However, this requirement adds the task and therefore potential
problem of requiring the MV3 user to engage in active reﬂection on practice.
Reﬂection on practice can be time consuming and result in delay and even
‘over-thinking’ key issues. It is a good practice but does come with practical
issues.

95

Part 2 – Information technology systems methodology

These three foci can be argued to contribute sequentially to the wider historic
legacy of Multiview:

.

.

.

as a means to review a problem context from a range of perspectives
(evident in the 1985 era 2 origins of the method)
as a requirement of the ‘made simple’ origins of MV1 (Antill and Wood-
Harper, 1985)
to the reﬂective practitioner aspect of era 3 MV2.

MV3 is shown in outline as a step-by-step Rich Picture diagram (start at the
top left) in Figure 2.8.

96

Part 2 – Information technology systems methodology

The development of
an information system,
problem/opportunity

Intellectual
framework

The context
for the system

Organisation

Analysis
team

Methodology

Stakeholders

Works with
stakeholders

Context produces

A problem-solving team

Methodology
used as necessary

Terms of
reference

Develop the
specification

Define a
potential system
(cyclic process)

Methodology
used as necessary

Figure 2.8 MV3 (Bell and Wood-Harper, 2003, p. 158)

Systems
installation and
operation
(monitoring and
evaluation)

97

Part 2 – Information technology systems methodology

To some extent MV3 is more systematic than MV1 or MV2 and therefore
comparable to other systematic methods. However, this systematic format is
supported by a focus on reﬂective concerns as set out in MV2. Figure 2.8
indicates the importance of stakeholder engagement and the ﬂexibility in the
application of the method. The application needs to be dependent on the prior
requirements speciﬁed by the stakeholders engaged in the IS project.

If the guiding spirit of MV2 is a learning-reﬂective process, then the spirit of
MV3 is self-reﬂection and mutual learning in action in variable cultural and
organisational contexts. However, equally important for MV3 is the focus on
non-specialist inclusion in IS. This is where MV3 ﬁnds a signiﬁcant gap in
the existing method provision and makes MV3 as relevant to industrialised as
to Global South countries.

MV3 includes stages outside those which would normally be ascribed to
analysis and design such as procurement, project planning tools such as
Logical Framework, and monitoring, and evaluation of ﬁnal systems
implementation. A further innovation in MV3 was the development of a
simpliﬁcation of the Information Modelling stage. Information Modelling (a
process whereby the data for an IS is broken down into entities, attributes,
functions and events) is arguably the most technically demanding element of
MV. Given the requirement of MV3 to be accessible to non-specialists it
includes a user-driven version of Information Modelling called End User
Information Modelling. This provides a means for organisation stakeholders
to assess their existing information and data needs and to model new
scenarios.

Although the use of MV3 is recorded in academic literature the method has
been primarily applied and recorded in the unpublished work of professionals
from the Global South, and this means that it is largely invisible.

MV3, like MV1 has ﬁve formal stages: Soft Systems (SSM), information
modelling (IM), sociotechnical systems design, human–computer interaction/
interface design and design of the technical details. Each of the ﬁve remain
quite similar to earlier versions.

The examples of the use of MV3 date from 1999 and this places almost all of
them in the contemporary fourth era. Although MV3, as with MV1 and MV2,
represents an assembly of approaches, with the method now handed over to
the user and stakeholder in the context there is far greater freedom to
innovate according to the needs of the context.

Activity 2.18 (self-assessment)

5 minutes
MV3 as presented here represents era 4, post-methodology. Set out three key
features you note about this era as expressed in MV3.

98

Part 2 – Information technology systems methodology

2.6.5 From MV1 to MV3
The evolution of Multiview is instructive for anyone attempting to make their
own method in order to undertake IT development. There are generic lessons
to be learned and we want to quickly go over them now.

The three modes of MV represent the themes of three of the eras.

MV1 was innovative in era 2. It was concerned with the inclusion of users
and a wider community rather than conventional ‘experts’. It did this by
applying an action research approach to information systems applications
largely in academic teaching settings.

MV2 focuses its attention on the systemic development of the analyst
(reﬂecting on the analyst’s use of method, area of application and underlying
assumptions) within an overtly learning IS context. MV2 practitioners were
also interested in applying the methodology to more recent developments in
software applications. MV2 was innovative in the era 3 context being more
ﬂexible and learner centred than the compendious methods like SSADM
which were prevalent at the time.

MV3 is focused on ﬁnding means to build IS in organisations located within
Global South countries. MV3 has emerged from the perceived need for non-
specialist analysis and design tools, as well as self-reﬂection for the analyst
operating within a variety of cultural contexts or ‘turbulent environments’.
MV3 is also assumed to operate within contexts where potentially self-
contradictory needs for rapid, user-friendly yet precise approaches to IS are
applied in Global South countries by non-specialists.

Multiview provides the analyst or analysis/stakeholder team with the means
to capture and explore wide visions of IS contexts in a manner which is open
to stakeholder direction and open to change. From MV1 to MV3 there would
appear to be a consistent requirement to gain clarity from the context of the
problem situation, and to meld and model in a coherent but sensitive way an
IS solution.

It should be noted that other methods claim to do similar things. Strategic
Options Development and Analysis recognises the value of the analyst’s
personal journey in the understanding process. Capability Maturity Model
focuses heavily on structure and staged processes of development.
Euromethod is intended to cover the whole scope of analysis and design and,
like MV3, includes procurement and monitoring and evaluation.
Requirements analysis, while having a focus on technology, incorporates
organisational requirements closely linked to technical capabilities.

99

Part 2 – Information technology systems methodology

We would argue that the changes in Multiview have been less to do with
marking trends in the sophistication of the ICT market (although this is noted
most speciﬁcally in the technical focus of MV2), but rather in the emerging
importance of stakeholder needs for the effective development of IS, i.e. what
we might call ‘the rise of the stakeholder’. In MV3 this is linked to the
increasing importance for a reﬂective process for the analyst leading in the IS
process. It is good to learn from our impact and our mistakes. If this is so in
our own cultural contexts, where we feel ‘at home’, it is even more the case
in contexts which are different and strange. MV3 arose from an
understanding of the needs of non-ICT specialists in developing countries to
apply tools which help them to plan their IS needs.

Activity 2.19 (self-assessment)

30 minutes
Note down some responses to these questions:

(a) Why do you think multi methods came into existence?
(b) What was the main purpose of MV1?
(c) Is this purpose still the same for MV3?
(d) What would you see as being the successful features of Multiview?

Multiview emerged in era 1 and has continued until the present day. In its
format and content it provided the user/stakeholder with tools and techniques
to meet the needs of each era. In the next section we are going to introduce
you to an approach which is more attuned to the speciﬁc needs of era 4 –the
Agile approach.

2.7 Agile methods
2.7.1 Introduction
In this module we look at Agile approaches from a sociotechnical-systems
perspective, thinking of systems as comprised of social and technical
elements. Rather than expecting to be able to initially specify an IT system
completely, and expecting it to continue to operate in a stable environment,
Agile approaches aim to recognise that this is impossible. In the caricatured
presentation of the waterfall approach, system requirements are speciﬁed in
detail ‘up front’. The system is designed and implemented to fulﬁl these often
very complex requirements with little reference to any external changes. As
we have seen this is difﬁcult to accomplish effectively.

It can often be difﬁcult to distinguish the hype from reality around
technologies and technology-related practices. In what have been termed
‘computerisation movements’, proponents of a particular technology or
method may make claims that cannot readily be substantiated. Now that
Agile approaches have become more mainstream and better established, we
can start to examine these claims. These may be genuinely innovative and
important approaches; they may present already established ideas in a new

100

Part 2 – Information technology systems methodology

language or they may make claims which are, or become, genuinely
questionable. In his account of Agile, Meyer (2014) examines Agile using a
simple framework (Table 2.1). In effect, this is a 2x2 matrix to identify what
is actually innovative in Agile, and what is ‘good’ (effective). This way of
looking at technologies and techniques could usefully be applied in many
situations as a way of trying to identify what is hype and what is already
established, i.e. what is genuinely new and useful and what may simply be a
bad idea.

Table 2.1 A simple framework for evaluating Agile approaches

Not new

New

Good

Not good

We’ll return to this later in this section once we’ve looked at Agile
approaches in a little more detail.

2.7.2 Agile
‘Agile’ isn’t a single method or methodology, but rather it’s more of a family
of related methods conceived as an attempt to address some of the problems
its proponents saw in software development. Agile approaches are committed
to a ‘lightweight’ approach to developing software iteratively in small
increments, team-working, communication and continuous learning. Here, we
will look brieﬂy at the original Manifesto for Agile Software
Development (2001). The Manifesto which was agreed by individuals
supporting a range of varying ‘Agile’ approaches was an inﬂuential rallying
point for the Agile movement.

More recently, Agile approaches have spread beyond software to address
other organisational practices. The focus here is on Agile software
development, though this does inevitably touch on these wider issues as we
see below.

Manifesto for Agile Software Development
The ‘Manifesto for Agile Software Development’ (2001), widely seen as
foundational to the Agile software development movement, came out of a
workshop in the Wasatch mountains in Utah in 2001. The workshop was
attended by advocates for a range of approaches to software development
who were sympathetic to the idea of an alternative to what they termed
‘documentation driven, heavyweight development processes’ (Beedle, et
al., 2001).

101

Part 2 – Information technology systems methodology

The Manifesto itself is brief, consisting essentially of ﬁve statements or
slogans. These statements set up a set of binary oppositions, emphasising
what the workshop participants held to be preferable. For example, the ﬁrst
of these statements places ‘individuals and interactions’ in opposition to
‘processes and tools’. The Manifesto (see Figure 2.9) implies a strong
preference for the former, but no underlying arguments to support this
position.

Manifesto for Agile
Software Development

We are uncovering better ways of developing
software by doing it and helping others do it. Through
this work we have come to value:

Individuals and interactions over processes and tools
Working software over comprehensive documentation
Customer collaboration over contract negotiation
Responding to change over following a plan

That is, while there is value in the items on the right,
we value the items on the left more.

Kent Beck

Mike Beedle

Arie van Bennekum

Alistair Cockburn

Ward Cunningham

Martin Fowler

James Grenning

Jim Highsmith

Andrew Hunt

Ron Jeffries

Jon Kern

Brian Marick

Robert C. Martin

Steve Mellor

Ken Schwaber

Jeff Sutherland

Dave Thomas

Figure 2.9 The Agile Manifesto (Beedle et al., 2001)

The Manifesto positions ‘Agile’ as an alternative, almost opposing, approach
to aspects of traditional software development. Perhaps most strikingly, the
Manifesto says rather little about how to develop software, though as a
manifesto rather than a manual, this may be unsurprising. It is a series of

102

Part 2 – Information technology systems methodology

assertions. It opposes anything which might be termed ‘big, upfront steps’,
replacing these with the incremental and iterative development of small steps.
It aims to minimise software functionality to what is known at that point to
be useful.

The Manifesto is though supported by twelve further principles (see
Table 2.2). Both the Manifesto and its supporting principles prioritise
technical excellence and functioning software as the primary criteria of
success. Some of the principles are questionable. For example, is it really the
case that face-to-face communication is always the most effective way of
conveying information, or that the best designs always emerge from self-
organising teams? They say little about how these will be achieved. There are
different emphases in the various Agile methods that have evolved to realise
the Manifesto and principles.

It is also worth noting that neither the Manifesto nor principles have anything
explicit to say about professional standards and ethics beyond the working
conditions of developers themselves, as in ‘sponsors, developers, and users
should be able to maintain a constant pace indeﬁnitely’ (principle 8). The
highest priority is customer satisfaction; the principles say nothing about
wider social concerns such as designing software and hardware that is
sustainable (or at the very least, will not contribute to the climate
catastrophe). As we will see below, some have argued that Agile methods are
more problematic in heavily regulated areas such as medical applications,
transport control systems or power generation.

Table 2.2 Principles behind the Agile Manifesto (Beedle et al., 2001)

We follow these principles:
–
Our highest priority is to satisfy the customer through early and continuous
delivery of valuable software.
–
Welcome changing requirements, even late in development. Agile processes
harness change for the customer's competitive advantage.
–
Deliver working software frequently, from a couple of weeks to a couple of
months, with a preference to the shorter timescale.
–
Business people and developers must work together daily throughout the project.
–
Build projects around motivated individuals. Give them the environment and
support they need, and trust them to get the job done.
–
The most efﬁcient and effective method of conveying information to and within a
development team is face-to-face conversation.
–
Working software is the primary measure of progress.
–

103

Part 2 – Information technology systems methodology

Agile processes promote sustainable development. The sponsors, developers, and
users should be able to maintain a constant pace indeﬁnitely.
–
Continuous attention to technical excellence and good design enhances agility.
–
Simplicity – the art of maximizing the amount of work not done – is essential.
–
The best architectures, requirements, and designs emerge from self-organizing
teams.
–
At regular intervals, the team reﬂects on how to become more effective, then tunes
and adjusts its behavior accordingly.

As we will also see below, in contrast with more traditional methodologies,
Agile approaches put at least as much emphasis on ‘mindset’ and ‘values’ as
on speciﬁc practices and tools, what Bob Martin – one of the participants in
the original Wasatch workshop who produced the Agile Manifesto – referred
to as ‘mushy’ aspects of the approach. In making this bold statement Martin
was defending the emphasis on human elements of Agile development, rather
than viewing it as a set of mechanical processes. This commitment to the
‘softer’ aspects of Agile methods is reﬂected in, for example, the 2020 Scrum
Guide (Schwaber and Sutherland, 2020). We will discuss these soft aspects
more fully once we have had a look in a little more detail at some of the
ways in which Agile adherents implement this manifesto.

2.7.3 Agile approaches and techniques
The Manifesto then is rather general and does not prescribe any speciﬁc way
of applying Agile development. There are a range of methods and approaches
which are widely viewed as falling under the Agile umbrella; there are
differing ways of turning, for example, the Manifesto principle of valuing
‘individuals and interactions over processes and tools’ (Beedle, et al., 2001)
into a speciﬁc way of organising the work of developing an information
system in a particular context. This is reﬂected in the variety of Agile
methods. However, the differing approaches have many similarities in their
underlying principles. Typically, they include four core practices: team/
collaborative working; incremental design and iterative development;
continuous customer involvement; and inspect and adapt cycles (Baham and
Hirschheim, 2022). The various approaches use different names for similar
concepts or practices, though each brings its own particular emphasis.

Within Agile we can identify two broad families of approach reﬂecting their
origins. ‘Lean’ approaches draw on lean manufacturing practices that were
developed from the 1950s onwards by Japanese companies, most notably the
Toyota car manufacturer. The emphasis here includes reducing waste and for
software development this can be translated into any work activity that does
not add value to a product. The other family, driven by developers
themselves, tends to emphasise the empowerment of developers freed from
the ‘weight’ of previous approaches to software development.

104

Part 2 – Information technology systems methodology

The various approaches to Agile software development have much in
common: iterative development, minimising documentation and team-
working. Some of the more common approaches promoted by differing
communities and companies are listed below. The ﬁrst two of these derive
from lean manufacturing, and the remaining three from the ‘developer
freedom’ movement:

. Lean software development: lean software development is a translation of
the ideas of lean production into software development. Among other
objectives it aims to reduce waste (understood as unnecessary code),
amplify learning during the process, and promote fast delivery.

. Kanban: Kanban also originated in Japanese lean manufacturing before it

.

was applied to software development. It is named after the boards
(‘kanban’) used to hold a graphical representation of the progress of
work, and aims to minimise the amount of work in progress at any point.
Scrum: Scrum is perhaps the most widely known and used variant of
Agile development. It focuses on management aspects of software
development. Its distinctive terms, such as ‘Sprint’ and ‘Scrum’, have
become widely used beyond the method itself (see below).

. Extreme programming (XP): XP is concerned primarily with the technical
aspects of software development. A distinguishing feature of XP is the
practice of programmers working in pairs (‘pair programming’) with the
aim of reducing the frequency of software defects.

. Crystal: Crystal is distinguished by its recognition of the difference in the

way teams perform in their particular contexts and its active
encouragement of adaptation of the framework by its users to their own
circumstances.

It’s worth noting that the boundaries between these approaches to Agile
development are rather porous. It is not unusual for techniques associated
with one approach to be used in another. To give more of a ﬂavour of the
two broad approaches of Agile software development, we will next look in
more detail at the examples of Scrum and Kanban.

Scrum
Scrum is generally accepted as being the most common Agile development
method (see for example Vallon et al., 2018). It is primarily concerned with
the effective management of Agile development. Its key concepts are set out
in Schaber and Sutherland’s (2020) The Scrum Guide, which claims to be the
deﬁnitive guide to Scrum. True to Agile’s general commitment to minimising
documentation it is only 13 pages long.

Rather than focus on extensive instructions The Scrum Guide aims to ‘guide
[the] relationships and interactions of people implementing it’ (2020, p. 3)
with the aims of managing risk and making development more predictable.
The Scrum process is organised as a series of ‘Sprints’ – relatively short
chunks of work lasting up to a month. Sprints are carried out collaboratively
by Scrum Teams made up of Developers, a Product Owner who is
accountable for the product being produced, and a Scrum Master who is
accountable for the effectiveness of the Scrum Team. A Scrum Team uses a

105

Part 2 – Information technology systems methodology

set of artefacts or tools which support the work. These include a‘ Product
Backlog’, which is an ordered list of what needs to be done to achieve the
goal of the product; a‘ Sprint Backlog’, which is made of the items from the
Product Backlog which the Sprint will complete; and an ‘Increment’, which
is a concrete stepping stone towards the Sprint, and hence the Product Goal.

Four formal events happen with each Sprint:

. Sprint Planning: involves the entire Scrum Team in setting out what

work will be done in the Sprint.

. Daily Scrums: 15-minute meetings of the Developers to check on the

progress of the Sprint. These are often referred to as ‘stand ups’ which
keep meetings short by the simple expedient of not allowing participants
to sit down.

. Sprint Review: checks on the outcomes of the Sprint and presents them

to the various stakeholders.

. Sprint Retrospective: takes place at the end of each Sprint and reviews
how the work was done and its effectiveness with the aim of improving
future performance.

Both the Sprint Review and Retrospective formal events can be thought of as
completing feedback loops. The Review focuses on the external environment
while the Retrospective focus is on the internal functioning of the Scrum
Team.

As with other Agile methods, these steps can be difﬁcult to implement in
organisations without a history of Agile because it is a quite different way of
working. Scrum depends on the acceptance of, and proﬁciency in, its values.
These are Commitment, Focus, Openness, Respect, and Courage. The Scrum
Guide explains it thus:

The Scrum Team commits to achieving its goals and to supporting each
other. Their primary focus is on the work of the Sprint to make the best
possible progress toward these goals. The Scrum Team and its stakeholders
are open about the work and the challenges. Scrum Team members respect
each other to be capable, independent people, and are respected as such by
the people with whom they work. The Scrum Team members have the
courage to do the right thing, to work on tough problems.

(Schwaber and Sutherland, 2020, p. 4)

The Scrum Guide, and the literature about Scrum more widely, tends to
emphasise that it is not set in stone, but needs to be adapted to the particular
situation a team ﬁnds itself in, especially as teams become more conﬁdent in
its use.

Kanban
Kanban grew out of the implementation of lean production at the Japanese
car company Toyota, which started operation in the late 1940s. At its core,
Kanban (the Japanese word for ‘signboard’) is a visual representation of work
originally used to co-ordinate and schedule the supply of car components in
order to minimise the need to hold expensive stock (hence ‘lean’). In Agile

106

Part 2 – Information technology systems methodology

software development, a Kanban is used to keep track of and coordinate the
work of a development team. Kanban boards are simple. While there are
many adaptations and variations, the simplest Kanban might be a table with 3
columns to which tasks can be attached as cards or stickers. Each column
represents the status of the task, typically variants of: ‘To Do’, ‘Doing’,
‘Done’. A Kanban for TM353 assessment work might look something like
Figure 2.10. Once TMA 02 has been submitted, you would move the card to
‘Done’ and shortly afterwards move TMA 03 to ‘Doing’.

To do

Doing

Done

TMA 03

TMA 02

TMA 01

EMA

Figure 2.10 A simple example of a Kanban

Of course, this is a trivial example. For a start, you are (or at least, should
be) writing your TMAs on your own; there is no need to coordinate writing a
TMA with any team members. The fundamental point of Kanban is that it
makes a team’s work visible, both to team members and other stakeholders.
In reality, the column headings are usually tailored to be more speciﬁc to the
kind of work being done. For example, in an Agile software project there
might be four columns: ‘Backlog’, ‘In progress’, ‘Testing’ and ‘Complete’.
Different coloured cards are often used to indicate different types of task
(e.g. ‘data validation’, ‘data management’, ‘interaction design’). The Kanban
is typically developed to suit the particular work and the context in which it
is being done.

Kanban is more than simply a way of visualising work, however. Senapathi
and Drury-Grogan (2020) present a case study in which they use a process
they call STATIK (Systems Thinking Approach to Implementing Kanban) in
the New Zealand public sector. They describe the orchestration of a range of
Kanban-related work steps, principles, and other relevant lean concepts.
Unlike Scrum, whose implementation can explicitly challenge existing
organisation and practice, Kanban’s foundational principles aim to work with
pre-existing approaches and improve, rather than replace, them (p. 3):

107

Part 2 – Information technology systems methodology

. Start with what you do now.
. Agree to pursue improvement through evolutionary change.
. Respect current processes, existing roles, responsibilities, and job titles.
. Encourage acts of leadership at every level – from individual contributor

to senior management.

Building on these principles, they present ﬁve steps in their improvement
process:

1 Identify value: deﬁne value by the customer’s standpoint.
2 Identify the value stream: identify steps in the process that create value

and eliminate those that are non-value-adding.

3 Create ﬂow: create smooth and continuous ﬂow by removing delays

between value-creating steps.

4 Establish pull: take work from upstream only when necessary and there is
available capacity in response to downstream demand, ultimately from the
customer.

5 Identify waste: reduce obstacles to continuous ﬂow, reduce delays, reduce

inventories, and eliminate defects at the source.

Several things stand out from their description of Senapathi and Drury-
Grogan’s case study. Firstly, the importance of the core Kanban concept of
work in progress. This is a limit on the number of items that can be placed in
the ‘doing’ column of the board to reﬂect the limits to capacity of any work
team. Secondly, they identiﬁed three classes of task with different
characteristics: ‘Fixed Date’ (with speciﬁc deadlines), ‘Standard’ (typically
dealt with ﬁrst in, ﬁrst out) and ‘Fast Track’ (requiring immediate handling).
Thirdly, an external Kanban coach was employed on a ﬁxed-term contract to
help to establish the new way of working. When she left at the end of the
contract difﬁculties arose because there were no remaining staff with high-
level expertise of Kanban.

Assessing Agile
Agile approaches have spread widely across the software industries since the
beginning of the millennium. They were originally developed in small, co-
located software teams working on applications such as web development.
They are now being used in a much greater range of contexts, applications
and organisational settings. Some limitations of Agile as it was originally
conceived have become apparent. Agile practitioners and researchers are
responding to these challenges and a range of approaches are being proposed
and reﬁned as they try to address these issues. Here, we discuss some of the
current issues in the development of Agile software development. It is worth
bearing in mind that not all of these issues apply to every approach to Agile
in the same way or to the same extent. They are, however, general concerns.

Firstly, we might ask how a method is used in practice, rather than in theory.
In one study, Mortada, Ayas and Hebig (2020) documented 13 types of
deviation from ‘proper’ Scrum in two Swedish companies. These included for
example, not estimating the resources that would be needed in a Sprint, or
not ending a Sprint with a demonstration of the product. This illustrates one

108

Part 2 – Information technology systems methodology

of the dilemmas in assessing the effectiveness of Agile development. One
team’s adaptation to local circumstances might be another’s failure to
implement an Agile approach ‘correctly’. This makes it harder to identify
whether difﬁculties are due to failures of the approach, or the failure to
implement the approach according to the Manifesto and its principles.

Secondly, there are issues of scale. Agile methods often work well at the
level of the individual development team, which is where they were
originally implemented. However, it has not always proved to be
straightforward to scale Agile approaches up to larger projects. One aspect of
this is the coordination of Agile development across multiple development
teams. Large projects are typically delivered by multiple teams or groups of
teams, making communication and coordination of development potentially
much more complex. Some approaches have been developed to try to address
these issues. For example, approaches such as Large Scale Scrum (LeSS)
(LeSS, 2024) or Scrum of Scrums (Atlassian, 2024) advocate practices and
tools for managing such projects. This might, as terms like ‘scrum of scrums’
suggest, propose ways of bringing together representatives of individual
scrum teams into a coordinating team. One area of some remaining debate,
however, is whether adopting these kinds of frameworks involves their
wholesale adoption, as typically advocated by their vendors, or tailoring them
to the particular context (Uludağ and Matthes, 2019).

Thirdly, Agile software development practitioners frequently identify
conventionally structured organisations as a source of problems. An Agile
team may need to interact with other parts of their organisation whose work
is structured and practiced differently, often for very good reason; a bank or a
local authority, for example, may need systems that work in their entirety
before allowing the public to use them. Some accounts of Agile in software
development argue that to reap all the beneﬁts of Agile approaches, they need
to be extended to encompass Agile practices more generally across an
organisation, which raises another set of potential challenges. Strode et al’s
(2022) study of three organisations identiﬁes thirteen separate tensions
encountered in attempting to implement Agile more widely. Organisational
change generally requires a change in mindset and echoing discussions
around the original Agile Manifesto above; this is a central component of
large-scale organisational transition. In management, however, this kind of
cultural change is widely viewed as one of the most difﬁcult to achieve well.
This is often interpreted as a generalised ‘change resistance’, but Agile
approaches may not sit easily with professions such as medicine or
accountancy, whose ways of working have developed to embody other
priorities.

Fourthly, in some settings and applications, key system objectives are not,
and cannot be, determined in an Agile way. This implies that there may be
types of application that cannot readily be developed using Agile approaches.
Safety critical systems, such as those in the nuclear, medical and avionics
industries, are tightly regulated to minimise the chances of serious harm
happening through systems failures. One feature of such systems is the
frequently close relationship between hardware and software. In hardware
development, overall system speciﬁcation and integration are often organised

109

Part 2 – Information technology systems methodology

along waterfall lines, for example, where the costs associated with hardware
development are seen as preventing iterative design. More importantly,
however, external standards may prescribe what development activities are
carried out, and in what order. They frequently require extensive
documentation to demonstrate to regulators and/or customers that the way a
system has been developed conforms to the externally deﬁned standards. This
may not ﬁt well with, or even allow, Agile approaches to minimising
documentation (Islam and Storer, 2020).

Fifthly, Agile approaches set great store in the role of the ‘customer’ or
‘user’ in development. The ‘user story’ is typically key to identifying what a
system needs to be able to support. The user stories form the basis of what is
usually referred to as the project ‘backlog’. The ‘product owner’ in a Scrum
team is responsible for ensuring that the team’s work is aligned with business
need. However, the integration of good user experience (UX) and interaction
design practices into Agile development are, for some at least, areas of
concern. One of the concerns identiﬁed by Argumanis, Moquillaza and Paz
(2020) is that the ‘product owner’ role in an Agile team is typically a
stakeholder with overall responsibility for verifying that the software that is
developed has satisﬁed its needs. It’s not clear, however, that this person
would always have a detailed understanding of how the system needs to be
used in practice; for example, a supermarket checkout manager may represent
requirements for a new checkout system in the Agile team, but may not have
a detailed understanding of either the checkout operators’ work (in the case
of staffed checkouts) or shoppers’ behaviour (in the case of self-service). In
another study, Law and Lárusdóttir (2015) suggest that not all Agile methods
have this problem to the same degree, and that the increased ﬂexibility of
Kanban may make it easier to integrate UX work into the development
process. Among the other concerns about the integration of UX and Agile
that Argumanis, Moquillaza and Paz (2020) identify is a lack of resources for
upfront user experience work in Scrum. This criticism appears to go to the
heart of Agile software development more generally which, as we have seen,
tends to reject upfront work in favour of quick implementation of working
code. It also leaves open questions, such as ‘working for whom?’ and ‘who
decides whether it works?’, bringing centre stage the questions of power in
systems development that we covered in Part 1.

Finally, there is some concern that the growing commercialisation and
institutionalisation of Agile approaches is at odds with the values of people
and relationships identiﬁed in the Agile Manifesto. The Agile ‘industry’ of
conferences, qualiﬁcations, coaches, standardisation and ‘toolbox’ approaches
to problem-solving has tended to obscure some of the initial liberating (for
developers, at least) elements of Agile, and the abilities to explore and ask
questions. The advent of Agile project management has marginalised those
aspects of Agile approaches concerned with technical development
(Dalcher, 2022).

110

Part 2 – Information technology systems methodology

Activity 2.20 (exploratory)

1 hour
Go to the module website to complete Activity 2.20, examining a case study
of Agile.

At the beginning of our discussion, we introduced the framework that Meyer
(2014) used to evaluate Agile. We now return to see some of what he
identiﬁed as new/not new and good/not good in Agile. Before looking at
Meyer’s conclusions, you may ﬁnd it useful and interesting to spend a few
minutes noting for yourself things that seem to ﬁt in the four cells of the
‘New/not new’ and ‘Good/not good’ table (Table 2.1 in section 2.7). These
may be from our discussion here, but also from any experience of Agile you
may have had outside the module – inside a team or outside of one – at an
organisation you’re familiar with.

We have not discussed all of the aspects of Agile that Meyer covers, so the
following is a selection, giving a sense of his critical evaluation of Agile. In
particular, he highlights some examples of practices that may have been
reﬁned or popularised by Agile practitioners, but which predate the
emergence of Agile development as a set of approaches. This is not intended
as a comprehensive evaluation – we don’t have the space. It is meant to give
a sense of some of the current issues and concerns with Agile approaches, as
well as the beneﬁts which are prominently reported by advocates.

Table 2.3 Summary of Meyer’s (2014) evaluation of Agile

Good and new

Team empowerment: teams of competent people can readily handle many of the
traditional software project management responsibilities.

Daily meetings: these can improve programmer interactions. The focus (in Scrum)
on identifying impediments can be particularly useful.

Time-boxed iterations: ﬁxing the time that can be spent on an iteration (Sprint)
reduces the potential for unrealistic promises of future functionality.
New but not good

Deprecation of upfront requirements: capturing requirements upfront is difﬁcult
and in any case may change. However, ignoring it entirely can lead to failure to
meet wider organisational needs and user interaction requirements (as noted
above).

Deprecation of documentation: written documentation can provide for
communication of ideas beyond the immediate context in which they are
implemented. Well written documents can be less ambiguous and allow decisions
to be traced more reliably than via spoken work or presentation slides.

111

Part 2 – Information technology systems methodology

Not new but good

Iterative development: this has been a long-standing practice in software
development. Meyer gives the examples of the open-source tradition of ‘release
early and release often’, and Microsoft’s ‘daily build’ of the 1980s producing a
working version every day. We might also point to the Systems Development Life
Cycle covered earlier as part of information systems methodology era 2.
Not new and not good

Reliance on user stories: user stories can be valuable for validating requirements,
but are only examples of potential use. Good requirements require more abstract
generalisations that subsume multiple examples.

As a ﬁnal input to this section, note that methods developed in one area can
be of use in unconnected domains. In the section on MV3 some of the users
were applying the approach as a means to understand their organisation more
broadly, rather than purely in terms of IS. This is also the case with Agile.

Activity 2.21 (exploratory)

20 minutes
Read ‘Agile Beyond Borders’, pp. 20–21 and reﬂect on the diversity of
Agile’s scope. This can be found on the module website in the Block 2 Part 2
resources.

2.8 What happens when IS method is not ﬁt for
purpose?
By now you should be very aware of the range and depth of IS methods
which have been prevalent in the past 70 years or so. You will also be aware
that there has been a tremendous amount of intellectual effort exerted in
producing this huge range. I also hope that from your reading around the
nature of IS method eras and different types of methods you have a sense of
how the science is developing and what the trends are.

There appear to be two current trends in IS method development. On the one
hand there is the rise of the Agile approaches such as Scrum. Avison and
Fitzgerald argue that these can be seen as a license to hack (hence their
popularity with developers?) and they counterpoint Agile and its spontaneity
and lack of structure with the conventional, structured, life cycle methods and
multi methods like Multiview.

But why do we need methods? This was a question we asked at the
beginning of this Part. At that point we argued that method ﬁlls a gap
between theory and practice. It is the means by which process and procedure
helps to make practice rational. An emerging issue is the observation that,
despite all this concerted activity, IS remains one of the problem domains of
our time. If we are so good at the methods, then why (as discussed earlier in
this module) is IS failure such a big issue?

112

Part 2 – Information technology systems methodology

Failure has been looked at in some depth earlier in the module. For now we
want to look at one speciﬁc example of failure which is speciﬁcally relevant
to the IS method.

In 1996 Helga Drummond reported on the failure of the multimillion pound
ﬁnancial system ‘Taurus’. Although the failure occurred towards the end of
era 3, Drummond’s description of the failure of the project makes good
contemporary points and interesting reading:

On Wednesday 10 March 1993, a member of the Stock Exchange technical
team returned from lunch with a copy of the Evening Standard. The
newspaper claimed that Taurus was about to be cancelled. The Stock
Exchange staff and contractors working on the project were sceptical. One
said, ‘We were all lulled into a false sense of security by the fact that this
[Taurus] may be a bit of a dog’s breakfast coming up. But they’ve spent so
much money on it, surely it would be ludicrous to jack it in now’.

The next day, however, on Thursday 11th March, an announcement was
made over the Stock Exchange Tannoy system. All Taurus staff were
instructed to report to an ‘off-site’ building away from the Stock Exchange.
‘Aye, aye’ said a programmer, ‘something’s up’.

An hour later he left the meeting clutching an envelope. The envelope
contained a letter advising him that he was redundant. The letter instructed
him to telephone the Stock Exchange next week to arrange to collect his
personal belongings from his desk. Almost all of the 360 or so staff
working on the project were likewise jobless.

As the programmer left the building he embraced his manager. Both of
them had been working eighty hour weeks for nearly three years in a
desperate effort to deliver Taurus. ‘Thanks’, said the programmer to his
manager, ‘you couldn’t have done any more’.

In the days that followed, and as the City houses counted their losses, hard
questions were asked. Taurus was intended to do for stocks and shares what
cash dispensers and other forms of electronic transfer had done for banking.
It had the support of the securities market and the Bank of England. It was
staffed by a powerful team of analysts, programmers, and strategy experts,
led by a highly respected project director, watched over by boards and
committees. How could such a superbly resourced project fail? And why,
less than one week after Taurus had been scrapped, could no one suggest
any good reason why it should ever have been built?

(Drummond, 1996, pp. x–xi)

In the following pages of her book Drummond explores how bad decision
based on bad decision led to a pyramid of wrong thinking, and how this
escalation of bad thinking was eventually catastrophically allowed to collapse
while more and more good money was wasted. There were all kinds of
problems in the Taurus project and the methods used were part of the mix.
The policy decisions made and the inability to stop the project because of the
political embarrassment which it would cause are well beyond the remit of
method, but the failure of the project team to be alert to the risks of mission
creep beyond the original project speciﬁcation, and the lack of clarity over
the boundaries and limits to any speciﬁc project module do relate to

113

Part 2 – Information technology systems methodology

inadequate methods. Taurus took place in the late 1980s and early 1990s,
over the middle to end of the third era according to Avison and Fitzgerald. At
this time there were rich, diverse and complex collections of tools and
techniques which could be applied. Soft Systems Methodology, particularly
good for dealing with messy and complex situations, had been publicised
since 1981, there were many analysts and programmers who understood the
‘soft’ nature of many problems. And yet, despite talented people, lots of
money and very complex methods this project failed. Building on this, any
review of the literature on failure will show that information systems seem to
have a special place in the genre. Books dealing with failure in IS have
abounded. Collins and Bicknell gave ten reasons for failure (they set them
out as deadly sins: overambition, pride, presumption, pusillanimity, credulity,
consultancy, tailored software, concealment, buck-passing and
lawyers) (1997). Collins and Bicknell, rather like Drummond, associate
methods with only a part of the problems. More recently, Gulla has set out
seven reasons for failure and why public sector IS projects are regularly in
the press (2012). Far from being a small part of the mix, Gulla notes that
54% of IT project failures can be attributed to project management – his
focus is much more on delinquencies in methods and to demonstrate this he
provides seven reasons for failure based upon these delinquencies:

.

.

.

.

.

.

.

poor project planning and direction
insufﬁcient communication
ineffective management
failure to align with constituents and stakeholders
ineffective involvement of executive management
lack of soft skills or the ability to adapt
poor or missing methodology and tools.

Gulla is particularly interesting on the matter of method and tools:

Successful projects are based on a methodology or framework that includes
project-management tools. This approach can increase accuracy and save
time by automating activities like task tracking.

Maintaining a simple, organic method can have signiﬁcant payback on a
project. It should include the following:

.

Set up an electronic project notebook.
. Establish written objectives for the project.
. Work with the technical lead to establish tasks within phases.
. Ask team members to estimate the time and number of tasks required.
. Create a formal project plan and manage to it, including basic change

control.
Proactively solve problems that may arise.

.

(Gulla, 2012, p. 3)

114

Part 2 – Information technology systems methodology

An interesting point about Gulla’s list is that none of it is particularly
innovative, new or startling. Collins’ list of ten reasons for failure covered
some of this and Drummond’s description of the problems that beset Taurus
in the early 1990s suggests many procedural reasons for failure. If there is a
methods problem with information systems development the problem would
appear to be chronic.

Activity 2.22 (exploratory)

10 minutes
Go to the module website and listen to Audio 2.9 to hear what Ken Eason
has to say on the matter of method failure.

From your reading of Drummond, Collins and Gulla and taking into account
Ken Eason’s comments, what is the main problem which IS method is not
addressing?

2.9 Where next for IS method?
At the beginning of this Part we differentiated between theory, method and
practice. In section 2.2 we went on to describe an evolutionary structure to
method – via the medium of methodology. This was shown in the manner in
which methods changed in eras to meet the growing sophistication of the IS
context. As technological and social circumstances change, this in turn means
that methods need to adapt. For example, the focus on customer service of
some IT means that era 1 methods would not meet the needs of business or
customer. Also, the rapidity of software development required to meet the
changing needs of users means that an era 3 approach like SSADM would
not achieve the needs of contemporary success in IT. Simply put, by the time
the project was ﬁnished the user would have gone. Methods which worked in
1970, while not redundant today, are certainly in need of innovation and
adaptation to make them ﬁt for purpose, and many have also included
signiﬁcant failures. Agile emerged from a web-orientated software
development world, but it is unclear if this is the panacea for all IT systems.

The changing face of method traces changes from the top-down, the bottom-
up and the middle-out. Top-down changes in IS theory, such as the
recognition of the importance of social requirements for technical systems to
work well, meant that method grew more open to the inclusion of approaches
like Soft Systems Methodology. Bottom-up practice such as the need for
stakeholders’ voices to be represented in the development of new IS resulted
in the development and innovation of MV3. Middle-out assessments that
method was too bulky and too slow to respond to meant that approaches like
Agile gained acceptance. Method evolution via methodological thinking
occurs all the time. It innovates and adapts to meet the needs of emerging
contexts.

115

Part 2 – Information technology systems methodology

Seen this way method is a very ﬂexible means to address the need for new
IS. But is it possible to conceive IS without method? To get a sense of how
things could be I asked Mike Ryan, an entrepreneur and digital futurist, to
comment on this. Mike says of himself that he is:

A born disruptor, he eats lives and breathes future thinking and has helped
many large organizations on their future strategy. Mike is an expert in
Horizon Mapping and foresight studies particularly around business
planning, disruption and digital innovation. He self publishes a futures
extinction map and crowdsources insight from a broad range of colleagues.

(Mike Ryan proﬁle, linkedin)

Activity 2.23 (exploratory)

8 minutes
Now, go to the module website and listen to Audio 2.10.

I encouraged Mike to speculate and to guess the future. Agility and light
touch characteristics still seem very important for the future. Mike sees chaos
as an important element of the past (if rather under-reported) and the future.
Futurescaping is never a deﬁnite science. The view in 2015 suggested that
different types of project maybe need different kinds of methods. Maybe we
have got past the notion that any one method can meet all IS requirements
because IS requirements themselves demonstrate a constant sense of change?

For example, here are ﬁve project outlines:

1 A rural doctors’ surgery patient records system.
2 A proposed app for Apple Music, which will locate video for any given

artist.

3 An addendum to a corporate ﬁnancial system. More to upgrade to the

VAT component.

4 Video tracking system for central London, with the ability to ‘follow’ any

given citizen across ﬁve boroughs.

5 Local community watch, with a real-time update. Who is in our area?

Each of the projects has different requirements. Some are larger than others
in terms of scope and possible data. Some use immediate data, some historic
and some a mixture of each. Some are more socially focused and some more
technical. Some would require innovation of new software and some the
update to what is already in place. No one method would ﬁt all comfortably.
Whatever the context the approach would probably need to change and adapt
to meet it.

This really takes us to the ultimate context for all theory, practice and method
– the human imagination. Times change and with them requirements but, if
method is to remain a useful and consciously applied mental process, what
are the likely changes coming our way?

116

Part 2 – Information technology systems methodology

Activity 2.24 (exploratory)

6 minutes
Go to the module website and listen to Audio 2.11. Trevor Wood-Harper and
I were talking about the value and use of methods in IS success.

Trevor has provided some insights into how the IS methods landscape may be
changing. He mentions action research as a means to apply methods – this
really means working with users and developers, adapting in context and
being brave enough to step outside the methods box. Most important is for IT
methods users not to work in isolation. Think about this as you try the next
activity.

Activity 2.25 (exploratory)

30 minutes
Recall the quote from George Santayana:

Those who cannot learn from history are doomed to repeat it.

(Santayana, 1905, p. 284)

In this activity we want you to consider the future or ‘futurescape’ of IT. We
would like you to use rich pictures (see Block 1 Part 2) to consider how IS
method is developing. What does each era teach us and what must we not
lose as we apply methods today?

2.10 Summary
This Part has been all about methodology and method.

We began by asking: What is methodology and what are IS methods? Why
are they important? In the Introduction we outlined the value of method and
set it in the context of theory and practice – the bridge between them.
Following this, we looked at the history of IS methods and, working from
Avison and Fitzgerald’s structure of four eras, we have set out some of the
main features of each – noting that methodology (the study of method) meant
that the methods for each ‘era’ were adapted and innovated to meet changing
and complex requirements. Information systems are needed, and continue to
be developed. IS method develops at various rates over time to meet this
need. In section 2.4 we looked at some of the most outstanding features of IS
methods in each of the four eras.

If IT systems are to succeed, then methods need to show resilience over time
and provide value for users. To demonstrate this we chose two areas of
method exploration: multi methodology (section 2.6) and Agile approaches
(section 2.7). Our ﬁrst analysis was of the Multiview approach and we asked
if it could be seen as a successful method? Marking the development of

117

Part 2 – Information technology systems methodology

Multiview in its three forms or phases (while marking the development
against eras 2–4) we suggested that Multiview succeeded by evolving with
the needs of each era and, to some extent, innovating at the same time. By
contrast, in our exploration of the Agile approach, we have seen it as a
family of related methods with porous boundaries between them. Agile
methods remain a work in progress in that there are several issues which
remain underdeveloped. It is not yet clear if these limitations can be
adequately addressed.

Building on this, we went on to look brieﬂy at what happens when IS method
is not ﬁt for purpose. What happens when systems fail? Failure in a system is
often linked to a failure in method and this is also linked to failures to
innovate and adapt. Finally, we have explored what is next for IS
Methodology. Is it a situation of no methods, invisible methods, or endlessly
adaptive methods? Methods and related methodology seem to be a necessary
and even vital part of our IS success.

Answers to activities
Please note that some activities do not have answers, if they are open-
ended, simply give instructions for reading or media use, or if a comment
is given in the text.

Activity 2.1
Does your deﬁnition say anything about understanding method – which could
be argued is key to the literal deﬁnition of methodology. Many deﬁnitions
tend to describe methodology as a big package which contains lots of other
stuff – which in turns leans towards a deﬁnition of method.

Avison and Fitzgerald expand their deﬁnition later in their book, further
suggesting that the term is contentious. Without clarity over the difference
between method and methodology, it seems that deﬁnitions remain a
confusing issue.

Activity 2.2
Waterfall diagrams are similar in their representation of ﬂowing step-by-step
downwards. They begin with high-level requirements-gathering, or user needs
analysis, and then descend through a variety of processes to a new system.
Figure 2.2 is closest to the Avison and Fitzgerald model of a step-by-step
‘fall’ from early thinking to ﬁnal output. There is the implication that the
beginning is a basic plan which then decends into more detail.

Activity 2.3
We thought that there was a lot of sympathy between Trevor’s and Martyn’s
views. Trevor is a Professor of Information Systems and Systemic Change at
the University of Manchester with a lifetime of experience in the comparative
analysis of IS methods. He is rightly seen as an innovator of methods, an IS
methodologist in the purest meaning of the term. In his piece he demonstrates

118

Part 2 – Information technology systems methodology

a focus on soft systems and the procedures and nuances of the Multiview
approach (both of which we will look at in more detail shortly). Martyn,
however, is a professional IT manager; to be exact he runs a team of IS
developers, architects and testers. In numeric terms this means 180 people,
forming approximately 22 teams. Martyn is an exponent of the SCRUM
Agile approach and is a Fellow of the British Computer Society. Trevor’s
view will be inﬂuenced by an academic study of method. Martyn is
concerned with what works at the practical level of day-to-day applications.

Both are concerned with people, practicality and the methods they use being
ﬁt for practice and, therefore, success. We don’t get a sense that any speciﬁc
method is an issue. What we do sense is the shared passion for methods – as
they say, if we did not have them we would need to invent them and without
them we are ‘stuffed’.

Trevor and Martyn suggest that methods are vital in bringing IT success.

Activity 2.10
(a) In sequence, we have heard from Jeff, Ken, Trevor and Martyn. Jeff

spoke as if from a frontier: a new place to investigate with maths and
precision. He mentioned hardware in the same breath as software and his
thinking was clearly hugely affected by the limits of the machinery at
hand. Queue theory and methods for optimization – these are the kinds of
ideas that came to the fore.

(b) If we had to pick out three features we would say: exploring the frontier,
optimisation and the fruits of some of the investment from World War II.
Ken picked up on this but expanded on the waterfall. Success was a
technical process and precision was vital. His three features are contracts,
tick boxes, and functional requirements. Trevor, in his narrative, is clearly
concerned by unhelpful attitudes with methods such as tick-box thinking,
undue focus on structure and a recipe approach to systems. Martyn’s
testimony indicates to me that IS method has made the leap to a social
focus – indicated by Trevor and Ken. In the Agile era 4, teams need to
work with business value, short, sharp time boxes and embrace change.
(c) Success has moved and evolved. Precision is important for success but so
is process. Process is vital but it must be accompanied by a focus on the
social side of systems. And what use is success in sociotechnical terms if
it cannot be team-driven, light of foot and embrace change?

Activity 2.11
IS methods innovation might be argued to emerge from major changes in
technology and user need – to be reactive to changes in practice rather more
than theory. The ﬁrst change from era 1 to era 2 could be said to be the result
of the development of microcomputing and the PC. As major investment by
big corporations and government built larger and larger systems, so the
methods evolved in a similar manner, expanding to meet the needs of larger
projects. With the advent of mobile technology, the movement is towards
Agile approaches which can ﬁt projects of various scales. Change in method
is not uniform and nor is it constant. It is fragmented and diverse. A key

119

Part 2 – Information technology systems methodology

feature of innovation is what we might think of as ‘the tendency towards the
social’ but this is not general. Conservative technical systems of a waterfall
construction are still about but on their own are not enough – Ken has made
this very clear in his audio piece.

Activity 2.13
We found the following to be major factors.

Comment on
era 2

Comment on
era 3

Comment on
era 4

Era features Comment on

What is
successful?

What is less
useful?

era 1

Good at
producing
mathematically
precise models

Did not take
into account
human/social
cultural
requirements
and constraints

Organising
some of the
various
strands of IS.
In particular
data, process
and behaviour

Not good at
understanding
the messiness
involved in
human
systems

What does
the era
contribute to
methods
today?

Understanding
a complex
world with
quantitative
models

Process
models for
capturing
complex
interactions

Compendious
methods which
try to
accommodate
all relevant
issues

Modular and
light touch
approaches for
small teams to
use

A problem of
comprehension.
The methods
are so complex
and weighty
they defy use in
some cases

Methods which
attempt to
answer any
question thrown
at them

Providing rigour
and structure
(sometimes
inappropriately)
in chaotic
contexts

Focus on task
and
simpliﬁcation of
process –
reduce
bureaucracy

Activity 2.14
In Block 2 Part 1 you were introduced to the NHS Electronic Patient Records
system. Any EPR-type system will have patient records including conﬁdential
information about illness, treatment, relevant medics and timeline of
treatment.

From era 1 we would certainly want to consider the disciplines described by
Houlden. The patient records system would need to be interactive and
respond to user demand but the internal processes would need to be rational/
deterministic in nature, obeying rules and commands set out in formal
procedures.

Era 2 gives us a sense of ﬂow and cause and effect. This is vital for the EPR.
Certainly the waterfall model and the development cycle give some good
clues to processes for IS development.

Era 3 and soft systems gives us more capacity to think about the IS in the
round, as a whole and as a social system with social issues. Many of the

120

Part 2 – Information technology systems methodology

problems noted in the press about hospital records systems are to do with the
social dynamic rather than the technical detail.

Era 4 and Agile. Maybe we can use this as a quick way to develop a model
which we can test early and often?

Activity 2.15
We think that a successful method is:

.

.

.

created by a critical mass of academic and business practice
assembled from a variety of components
assembled to meet the needs of diverse situations.

We think that the most important feature is that the methods tend to be
assemblages of parts which have already been proved to be useful in the
evolution of methods.

Activity 2.16
Era 2 was dominated by the sequential systems development life cycle. MV1
does not conform to this model. The method is initially sequential but then
some aspects occur concurrently.

Activity 2.17
The main differences are sequence, dependence and completeness, although
reﬂection is also a difference. SSADM, like MV2, is a series of different
approaches and techniques but the overarching impression from a cursory
view of SSADM as shown in Figure 2.4 is the sequential approach. As with
waterfall models SSADM shows a step-by-step approach with each phase
being in some way dependent upon the previous step. MV2 appears much
less structured. Like MV1 the phases appear to follow on from each other
only loosely. There is a sense in which elements or segments of the
methodology could be absent altogether in some applications. The analyst
would appear to have a lot of creative freedom to include or exclude some of
the elements of the method.

Activity 2.18
The three features of this era we noted were ﬂexible, lightweight with close-
knit teams. These are all terms which were used in section 2.4.4 to describe
some of the post-methodology approaches. MV3 also conforms to these. It is
ﬂexible, allowing users to ‘play’ with the structure. It is lightweight in that it
lacks a strong emphasis on sequence and structure and it is team-facing;
teams are intended to pick up and use the methodology with less reference to
technical specialists working in isolation.

121

Part 2 – Information technology systems methodology

Activity 2.19
(a) Multi methods are an attempt to be inclusive. Earlier methods focused on
speciﬁcs but the IS environment is as wide as human experience. An IS
needs to operate in a social, technical, ethical, cultural, political,
economic and personal context. Multi methods, with the range of tools
and techniques which they include, try to assess a wide and diverse
context in a complicated world.

(b) The main purpose of MV1 (if we simplify greatly) was to introduce the

idea of multiple perspectives being relevant to IS analysis and design (an
element extended in MV2 and MV3) and to engage in concurrent rather
than sequential analysis. Key to Multiview’s success was the ambition to
‘sweep in’ more stakeholders to the analysis.
MV2 extended this and developed a more reﬂective process for the
analyst making use of action research.

(c) MV3 had a change in purpose as it did not just include but deliberately

sought out the non-specialist and provided a means for teams and groups
of stakeholders to undertake IS Methodology innovation.

(d) MV seems to have been successful in innovating and moving with the

times, changing as the eras change and trying to morph into forms which
are relevant to new circumstances.

Activity 2.22
Of course opinions will differ but to our mind it is not a matter of tools,
techniques or methods. Rather this seems to me to be about organisational
culture, clarity of stakeholder requirements, ﬂexibility and system ambition.
Our guess is that Agile can and has worked as a method in high-risk contexts
such as hospitals. Our guess is also that MV1 could do some really useful
work in big business. It is less about the method detail and more a question
of the culture of the hospital or the bank or the supermarket and whether
their need achievable. Questions emerge such as are we developing a system
for tomorrow’s needs or yesterday’s? Does the team get time to think? Can a
system meet all user needs or just a limited set? Is there a learning focus? Is
there contingency to deal with failure? Is there a rush? Are egos involved? In
short, have we taken into account the social side of the sociotechnical
system?

These questions are probably as important as those more technically and
narrowly focused on the details of the methods.

122

Part 2 – Information technology systems methodology

Activity 2.25

ERA
3

ERA
2

ERA
1

?

ERA 4

PEOPLE

STRUCTURE

PROCESS

1,2,3,4,5,6

DATA

ICEBERG OR
MOUNTAIN

?

Figure 2.11 Iceberg or mountain?

123

Part 2 – Information technology systems methodology

References
Antill, L. and Wood-Harper, T. (1985) Systems analysis. London: Heinemann Made
Simple Computer Books.

Argumanis, D., Moquillaza, A. and Paz, F. (2020) ‘Challenges in integrating SCRUM
and the user-centred design framework: a systematic review’, in V. Agredo-Delgado,
K.O. Villalba-Condori and P.H. Ruiz (eds) Iberoamerican workshop on human-
computer interaction: proceedings of the 6th Iberomarican Workshop, HCI-Collab.
Arequipa (Peru), 16–18 September. Cham: Springer, pp. 52–62.

Atlassian (2024) Scrum of Scrums. Available at: https://www.atlassian.com/agile/
scrum/scrum-of-scrums (Accessed: 16 January 2024).

Avison, D. and Fitzgerald, G. (2003a) ‘Where now for development methodologies?’,
Communications of the ACM, 46(1), pp. 79–82.

Avison, D. and Fitzgerald, G. (2003b) Information systems development:
methodologies, techniques and tools. 4th edn. Maidenhead: McGraw-Hill Education.
Avison, D. and Fitzgerald, G. (2006) Information systems development:
methodologies, techniques and tools. Maidenhead: McGraw-Hill.

Avison, D.E. and Wood-Harper, A.T. (1990) Multiview: an exploration in information
systems development. Maidenhead: McGraw-Hill.
Avison, D.E. and Wood-Harper, A.T. (1991) ‘Information systems development
research: an exploration of ideas in practice’, The Computer Journal, 34(2),
pp. 98–112.

Avison, D.E., Wood-Harper, A.T., Vidgen, R.T. and Wood, J.R.G. (1998) ‘A further
exploration into information systems development: the evolution of multiview2’,
Information Technology and People, 11(2), pp. 124–139.

Baham, C. and Hirschheim, R. (2022) ‘Issues, challenges, and a proposed theoretical
core of agile software development research’, Information Systems Journal, 31(1),
pp. 103–129.
Beedle, M., van Bennekum, A., Cockburn, A., Cunningham, W., Fowler, M.,
Highsmith, J., Hunt, A., Jeffries, R., Kern, J., Marick, B., Martin, R.C., Schwaber, K,
Sutherland, J. and Thomas, D. (2001) Manifesto for Agile Software Development.
Available at: https://agilemanifesto.org (Accessed: 1 March 2024).

Bell, S. and Wood-Harper, A.T. (2003) How to set up information systems: a non-
specialist’s guide to the multiview approach. London: Earthscan.
CCTA (1993) Applying soft systems methodology to an SSADM feasibility study.
London: HMSO.

Collins, T. and Bicknell, D. (1997) Crash: ten easy ways to avoid a computer
disaster. London: Simon and Schuster.

Dalcher, D. (2022) ‘Is it time to rethink agile?’, PM World Journal, 11(12), pp. 1–11.

Drummond, H. (1996) Escalation in decision making: the tragedy of taurus. Oxford:
Oxford University Press.
Gulla, J. (2012) ‘Seven Reasons IT Projects Fail’, IBM Systems Magazine, February.
Available at: http://www.ibmsystemsmag.com/power/Systems-Management/Workload-
Management/project_pitfalls/ (Accessed: 12 August 2015).
Houlden, B. (1962) Some techniques of operational research. London: English
Universities Press.

Hummel, M. (2014) ‘State-of-the-art: a systematic literature review on agile
information systems development’, 47th Hawaii International Conference on System
Sciences (HICSS). Waikoloa (Hawaii), 6–9 January.

124

Part 2 – Information technology systems methodology

Islam, G. and Storer, T. (2020) ‘A case study of agile software development for
safety-critical systems projects’, Reliability Engineering & System Safety, 200, article
number 106954.

Law, E.L-C. and Lárusdóttir, M.K. (2015) ‘Whose experience do we care about?
Analysis of the ﬁtness of scrum and kanban to user experience’, International
Journal of Human–Computer Interaction, 31(9), pp. 584–602.
The LeSS Company (2024) Overview – Large Scale Scrum (LeSS). Available at:
https://less.works/ (Accessed: 16 January 2024).

Meyer (2014) Agile! The good, the hype and the ugly. Switzerland: Springer
International Publishing.
Mingers, J. and Brocklesby, J. (1996) ‘Mutlimethodology: towards a framework for
critical pluralism’, Systemist, 18(3), pp. 101–131.

Moore, G. E. (2006) ‘Cramming more components onto integrated circuits, Reprinted
from Electronics, volume 38, number 8, April 19, 1965, pp. 114 ff.’, IEEE Solid-
State Circuits Society Newsletter, vol. 11, no. 3. pp. 33–35. Available at: Available at
http://ieeexplore.ieee.org/xpls/ abs_all.jsp?arnumber=4785860 (Accessed: 1
March 2024).

Mortada, M., Ayas, H.M. and Hebig, R. (2020) ‘Why do software teams deviate from
scrum? Reasons and implications’, ICSSP ‘20 Proceedings of the International
Conference on Software and Systems Processes (ICSSP). Seoul (Republic of Korea),
10–11 October.

Naughton, J. (2000) T306 Managing complexity: a systems approach. Milton Keynes:
The Open University.
Olle, W. et al. (1989) Information systems methodologies: a framework for
understanding. Wokingham: Addison-Wesley.

The Oxford English Dictionary (2024). Available at: http://www.oxforddictionaries.
com.libezproxy.open.ac.uk/search/ (Accessed: 1 March 2024).
Ryan, M. (2015) ‘Mike Ryan’, linkedin proﬁle. Available at: https://www.linkedin.
com/in/mikemanchester (Accessed: 25 August 2015).

Santayana, G. (1905) ‘The life of reason’, inRe ason in Common Sense: Volume 1.
New York: Dover Publications.
Schwaber, K. and Sutherland, J. (2020) The scrum guide: the deﬁnitive guide to
scrum: the rules of the game. Available at: https://scrumguides.org/docs/scrumguide/
v2020/2020-Scrum-Guide-US.pdf (Accessed: 1 March 2024).

Senapathi, M. and Drury-Grogan, M.L. (2020) ‘Systems thinking approach to
implementing kanban: a case study’, Journal of Software: Evolution and Process, 33
(4), article number e2322.

Strode, D.E., Sharp, H., Barroca, L., Gregory, P. and Taylor, K. (2022) ‘Tensions in
organizations transforming to agility’, IEEE Transactions on Engineering
Management, 69(6), pp. 3572–3581.
Uludağ, Ö and Matthes, F. (2019) ‘Identifying and documenting recurring concerns
and best practices of agile coaches and scrum masters in large-scale agile
development’, Proceedings of the 26th Conference on Pattern Languages of
Programs. Ontario (Canada), 7–10 October.

Vallon, R., da Silva Estácio, B.J., Prikladnicki, R. and Grechenig, T. (2018)
‘Systematic literature review on agile practices in global software development’,
Information & Software Technology, 96, pp. 161–180.

Wastell, D. (1996) ‘The fetish of technique: methodology as a social defence’,
Information Systems Journal, 6(1), pp. 25–40.

125

Part 3 – Designing dependable
systems

Chris Bissell and Magnus Ramage

Part 3 – Designing dependable systems

Part 3 – Designing dependable systems

Introduction
In Block 1 of this module you studied various aspects of systems success and
failure.

But a system can only be successful if it can be depended or relied upon to
operate effectively and efﬁciently. The nature of dependability is therefore
very important in the design of successful systems. In this Part you will be
studying what, precisely, is meant by a dependable system, and some of the
ways in which a high degree of dependability can be ensured.

A basic deﬁnition of dependability is offered by the International Federation
for Information Processing (IFIP) working group 10.4 (concerned with
dependable computing):

the trustworthiness of a computing system which allows reliance to be
justiﬁably placed on the service it delivers.

(IFIP WG 10.4, no date)

This Part has a somewhat different ﬂavour from that of previous parts of the
module. It uses simple models, derived from control engineering, of elements,
subsystems and systems. These models are treated as ‘black boxes’, where
the inner workings are not considered important. We shall not be concerned
with the composition of the ‘black box’, but simply with its overall
characteristics, such as the probability of failure. Other common uses of such
black box models might characterise the ‘box’ in terms of variables such as
the response to audio or visual inputs and outputs – again without,
necessarily, any model of the internal processes involved.

Such models, although they will be introduced shortly in terms of individual
elements, can often be applied to much more complex systems, including
those involving people and organisations. However, the focus of this Part will
be on a set of modelling tools, rather than on the more nuanced ideas about
sociotechnical systems failure of the type considered elsewhere in this
module.

This Part uses numerical (quantitative) techniques to analyse various aspects
of dependability, in a way that other Parts have not done, especially in
section 3.4. Such techniques are an important part of the ‘toolbox’ of anyone
concerned with the design of dependable systems, so they are an integral part
of your study.

Numerical measures of dependency often form part of formal service-level
agreements, in which such matters as probability of failure, system downtime
and time to repair are speciﬁed as part of a contract between supplier and
customer. The mathematics involved is simple, of the sort studied at
secondary school level, so it is not something to be afraid of. Revision
resources are available if it has been some time since you last used
mathematics (see section 3.2 ‘Maths check’ below).

129

Part 3 – Designing dependable systems

This Part also includes study of two chapters of Ross Anderson’s book
Security Engineering (Anderson, 2020), available via the module website. It
is particularly important that you spend time on this – one chapter at the
beginning of the Part, the other at the end – because these chapters provide
much of the sociotechnical context to the more technological material in this
text.

In section 3.1 you will consider some of the different aspects of
dependability, and in section 3.2 check your skills in the sort of mathematics
you’ll need later in this Part, especially in section 3.4 which is where the
greatest use of mathematics occurs.

3.1 Dependability

Note: Normally our comments and suggested answers will be found at
the end of this Part, but in a number of cases our comments are an
integral part of the teaching material, so follow immediately – as in this
ﬁrst activity. Note that the suggested times for the activities are only a
guide, as this will depend very much on your prior knowledge and
experience. For example, in a couple of activities, the best approach is
to set up a spreadsheet, if you know how to do this. Setting up such a
spreadsheet might take a few minutes or half an hour or more,
depending on the individual.

Activity 3.1 (exploratory)

10 minutes
The term ‘dependability’ is often divided into a number of more specialised
characteristics – for example, ‘reliability’, availability, ‘safety’, ‘security’ and
‘maintainability’. Before reading on, make your own brief notes on what you
think these other terms mean.

Comment
Clearly, I cannot second guess how you might have responded to this
Activity, but here are some ways in which these features of dependability are
commonly deﬁned.

Reliability is the probability, over a given time period, that the system will
continue to function correctly as required by the user. Reliability can be
expressed in a number of ways, such as the number of failures in 1000 hours.
We’ll look in more detail at the concept of reliability later.

Availability is the probability that at any given time, the system will be
functioning correctly. It is sometimes expressed as the ‘mean time between
failures’ or the ‘mean time to repair’. Again, the nuances of these deﬁnitions
will be considered in a later section.

130

Part 3 – Designing dependable systems

It is important to understand that availability is not the same as reliability.
For example, a system may fail on average once every 1000 hours of
operation. This is a measure of its reliability. If such a failure can be detected
and repaired on average in 1 hour, the availability is 999/1000 or 99.9%. So
the availability of a system with a given reliability depends on the time it
takes to repair it.

Safety is a judgement – rather than a numerical measure – of how likely the
system is to cause damage to people, property or the environment.

Security is again a judgement of the resilience of the system to accidents or
to deliberate attempts to cause a malfunction.

Maintainability is a measure or a judgement of how easy it is to keep the
system in good working order (maintainability will not be considered in any
detail in this Part).

Activity 3.2 (self-assessment)

10 minutes
If the same system, with the same reliability, can be rendered functional after
each failure by a simple reboot taking 5 minutes, what is the availability as a
percentage of the time? What assumptions, if any, have you made?

Activity 3.3 (exploratory)

10 minutes
How dependable do you consider your home IT system (including internet
connections) to be? (Think in terms of the aspects of dependability listed
above.) What things do you do, if any, to improve availability and security?

3.2 Maths check
The following quiz asks you to answer questions requiring maths similar to
what you will need to use in section 3.4. Depending on your background you
may ﬁnd these very straightforward or quite challenging. If you have any
serious difﬁculty with any of the questions, you can ﬁnd maths revision
material on the module website (in the Block 2 Part 3 Resources section). We
advise you to study this well in advance of your study of section 3.4, which
is why we’ve included the quiz in this section.

131

Part 3 – Designing dependable systems

Activity 3.4 (self-assessment)

15 minutes
Quiz: Answer the following without using a calculator.

(a) What is 0.9 × 0.9?
(b) What is 0.1 × 0.1?
(c) What is 0.82?
(d) Write 3 × 104 in normal denary (decimal) form.
(e) Write 3 × 10–4 in the form 0.…
(f) What is 2 × 102 + 3 × 102?
(g) What is 2 × 102 × 3 × 102?
(h) What is 4 × 102 × 2 × 103?
(i) Evaluate (1 – 0.5) 3.
(j) Evaluate (1 –0.8 2) / 3.

3.3 A brief introduction to security engineering
In a moment we’d like you to read the introductory chapter of Ross
Anderson’s book Security Engineering (2020). The whole book is also
available to you (see links from the module website), and if you have time,
you may wish to explore some more of the content. However, it goes into far
more detail on security than is needed for TM353. It is engagingly written,
and very accessible without highly specialised prior knowledge, but note that
it does not claim to be a highly academic book, and the author is sometimes
not afraid to make sweeping assertions in a rather polemic style!

Activity 3.5 (exploratory)

1 hour 25 minutes
Please read up to the end of section 1.6 of Anderson’s Chapter 1 (linked via
the module website in the Block 2 Part 3 resources), and for each of
Anderson’s four examples, note down which aspects of dependability are
most important. You might like to begin using a simple categorisation of
high, medium or low, similar to Table 3.1.

Bank

Military

Hospital

Home

Table 3.1

Reliability

Availability

Safety

Security

132

Part 3 – Designing dependable systems

However, while you are doing this, also note down your reasons, and any
other queries that come to mind. For example, there are many different types
of systems in each of the example categories, which are likely to require
different combinations of the dependability characteristics.

Comment
Your precise assessment of the importance of the dependability characteristics
is less important than the thought processes you have gone through. For
example, it is tempting to think that the importance of all the various aspects
is high for every example – and indeed, to some extent this is true. But here
are my comments in which we try to tease out some gradations.

Bank: We’d say that security is of the highest importance for all banking
systems. Safety does not seem to be a huge issue, unless you consider
‘damage to property’ to include damage toﬁ nancial assets, or physical
malfunctioning of equipment causing, for example, a ﬁre. Reliability and
availability, we think, depend on which of the bank’s many systems we are
looking at. The bank’s backbone systems, that handle huge daily money
transfers, need to be highly reliable and available pretty constantly. When
banks’ whole IT systems fail, they can cause chaos for customers for several
days. Most people will have experienced the frustration of a cash machine
(ATM) being out of order when they’re desperate for cash. But individual
cash machines, while needing to be secure, do not need extremely high
reliability and availability because an alternative machine will usually be
available to customers somewhere nearby (at least in urban areas). The full
ATM system, however, does need high reliability and availability (and
maintainability)!

Military: We think you can make a good case for all aspects of dependability
being of high importance – although again, you need to distinguish between
particular functions and types of failure. A database of catering supplies is
not as critical as a weapons control system!

Hospital: Security and safety are clearly vital for patient privacy and health
care, as well as the integrity of medical and pharmaceutical data accessed
online. As with the other examples, reliability and availability again depend
on the application. A life support system for example has to be extremely
reliable and available, but many other hospital systems can cope with modest
downtime.

Home: The home environment is the most recent example of intensive
information system use, and perhaps the most difﬁcult to evaluate. Security is
of the highest importance for ﬁnancial, medical and some other applications,
while the security of routine emails is perhaps not a great practical worry for
most people, in spite of revelations about widespread government
eavesdropping, which have certainly raised important political and civil
liberties concerns. Safety is probably not so vital, unless it becomes common
to incorporate such safety devices as smoke alarms into a domestic network.
Again, reliability and availability issues vary – although it is interesting to
note that most people in the industrialised countries now expect the same
availability from their home wireless broadband as from conventional utilities
such as water, gas and electricity supply.

133

Part 3 – Designing dependable systems

What we can conclude from this is that in any analysis of dependability we
need to evaluate the different risks, and be aware that the importance of
failure or downtime for particular applications is context speciﬁc. Only then
can we design systems that give an appropriate level of protection for the
wide range of contingencies.

Activity 3.6 (self-assessment)

50 minutes
Please now read to the end of the second paragraph on page 12 in Anderson’s
chapter (which begins ‘Confusion between the above deﬁnitions …’). How
does Anderson’s discussion of the notion of a system compare with that in
Block 1 Part 1 of TM353?

Here’s a repeat of Anderson’s possible deﬁnitions of a system:

1 a product or component, such as a cryptographic protocol, a
smartcard or the hardware of a phone, a laptop or server;

2 one or more of the above plus an operating system, communications

and other infrastructure;

3 the above plus one or more applications (banking app, health app,
media player, browser, accounts/payroll package, and so on –
including both client and cloud components);

4 any or all of the above plus IT staff;
5 any or all of the above plus internal users and management;
6 any or all of the above plus customers and other external users.

(Anderson, 2020, p. 12)

Now read the remainder of Anderson’s Chapter 1. The wide range of
terminology he discusses is interesting and important for security engineering,
but will not be assessed in TM353.

Most approaches to improving dependability involve one or more of the
following:

.

.

.

avoiding the threat or hazard
detecting and removing it
tolerating and/or recovering from it.

In the remainder of this Part we’ll look at some approaches to achieving this.

134

Part 3 – Designing dependable systems

3.4 Probability, reliability and availability
In section 3.1, we introduced some of the aspects of dependability in a rather
informal way, plus some of the maths you will need. In this section we turn
to some more precise measures. We are going to ask you to get to grips with
some fundamental principles before we get back to system dependability.

3.4.1 Probability
You may already have some notion of the concept of probability – maybe just
in an everyday sense, or maybe you have studied some mathematics with a
more formal treatment.

Many introductions start with a consideration of throwing coins or dice, so
although this is a bit of a cliché, we’ll do this too.

In the remainder of this Part we will express probabilities in the form 0
(impossible) to 1 (certain), although elsewhere you will sometimes come
across equivalent percentages being used.

Let’s start with some coin tossing. Assuming that the coin is fair (either side
equally likely) and we ignore the very small possibility of landing and
remaining on an edge, the chance of a head (H) or a tail (T) is 0.5. There are
two ways of working out the chances of combinations, such as tossing two
coins.

The ﬁrst approach is to look at all the possibilities; in the case of two coins
we have the following:

H H

H T

T H

T T

For fair coins, each of these possibilities are equally likely, and the sum of
the probabilities must be 1, since we have included every possibility. So each
combination has a probability of 0.25. This means that the probability of two
heads or two tails is 0.25, and the probability of one head and one tail is
0.25 + 0.25 = 0.5.

The other approach is the rule that if two independent events have
probabilities p1 and p2, then the probability of both events occurring is
p1 × p2, usually written simply p1p2.

Applying this rule to the coins gives the same answer: 0.5 × 0.5 = 0.25. Note
that it is extremely important to be aware when an outcome such as ‘one
head and one tail’ can be achieved in more than one way; then you have to
add the probabilities of the different ways.

135

Part 3 – Designing dependable systems

Activity 3.7 (exploratory)

20 minutes
Now have a go at something a little trickier – this time dice. Assuming that
the dice are fair – that is, any face is equally likely to turn up – try to answer
the following questions.

What do you think the probability is of:

.

.

.

.

throwing a six with one die?
throwing a four with one die?
throwing two sixes with two dice?
throwing two twos with two dice?
throwing a four and a three with two dice?

.
Comment
Throwing any number with one die has a probability of 1 in 6, or 0.167, so
that is the case for both a six and a four.

The next questions are a bit more difﬁcult. Let’s apply both the approaches
discussed in connection with the coins:

1 Throwing the ﬁrst die has a probability of 1 in 6 of turning up any

particular number. Then throwing the second also has a 1 in 6 chance of
coming up the same. So there is a 1 in 6 × 6 or 1 in 36 chance of getting
two numbers the same – a probability of 0.167 × 0.167 = 0.0278.

2 The other way is to list all the possibilities of throwing two dice. If you

think about it there are 36:
First die throws one with six possibilities with second die.
First die throws two with six possibilities with second die.
First die throws three with six possibilities with second die, and so on.
Only 1 out of those 36 possibilities gives two sixes or two twos, so the
probability is again 1 in 36 or 0.0278.

Throwing a four and a three needs you to think about the process. Basically
there are two ways of getting this result: throwing a four and then a three
(probability of 1 in 36) or throwing a three and then a four (again 1 in 36),
so the overall probability is 2 in 36 or 0.056.

To sum up, when dealing with questions of probability there are various
mathematical tools that can help. Three of the simplest are:

1 If events are independent, such as the throw of two fair dice, then the

probability of all events occurring is found by multiplying the
probabilities of each individual event.

2 If there are a number of different ways of achieving a given outcome, the
overall probability is given by adding the individual probabilities of each
separate way.

136

Part 3 – Designing dependable systems

3 The probability of a particular combination of equally probable events can
be found by listing all the possibilities and counting the number that give
the particular combination as a proportion of all the possibilities.
Here is another example of approach 3. Suppose a digital system uses
sequences of 3 bits. Zeros and ones are equally probable. What is the
probability of a 3-bit sequence containing exactly two zeros?

Let’s write down all the eight possibilities

000

001

010

011

100

101

110

111

Three of these sequences contain two zeros, so the probability of such a
sequence is 3/8 or 0.375.

Activity 3.8 (self-assessment)

20 minutes

(a) A digital transmission system uses sequences of 4 bits. Zeros and ones
are equally probable. What is the probability of receiving a 4-bit
sequence containing exactly three 1s?

(b) What is the probability of throwing a total of 7 with two fair dice?
(c) Two nodes in a network are connected by two parallel links, the normal

link and a backup. The normal link is out of operation for 0.1% of the
time. The backup is more prone to failure, and can be expected to be out
of service for 1% of the time when in use. What is the probability of
overall system failure (by which we mean that both links are out of
operation at any given time)? State any assumptions that you have made.

Activity 3.9 (exploratory)

30 minutes
You will ﬁnd a further activity on simple probability ideas, this time in a
non-technical context, on the module website in the Block 2 Part 3 resources.

137

Part 3 – Designing dependable systems

3.4.2 Reliability
The following subsections begin by considering hardware components, but
the general block diagram approach to reliability introduced a little later can
be applied to subsystems consisting of many elements, including people. It is
important to note, however, that characterising reliability by means of a
simple numerical measure cannot capture the sociotechnical nuances of
people, processes and organisational context. Nevertheless, it is often useful
to have such fundamental numerical measures of reliability and availability to
build into more complex models of system dependability. So let’s begin with
the question of the reliability of a single component in a system.

If a large number of identical components are tested, the number failing per
unit time tends to follow the general form of Figure 3.1, often known – due
to its shape – as the ‘bathtub curve’.

Early
failure
period

Intrinsic
failure
period

Wear-out
failure
period

y
t
i
l
i

b
a
b
o
r
p

e
r
u

l
i

a
F

0

Time

Figure 3.1 The so-called ‘bathtub curve’ showing how failure probability tends to
evolve with the lifetime of a component

During the early period – sometimes known as ‘burn-in’ – there is a
comparatively large number of failures, mainly due to manufacturing faults.
The middle period, essentially ﬂat, is known as the ‘useful life’, ‘intrinsic
failure’ or ‘normal operating’ period, where the probability of failure is
essentially constant. The period at the end, which also has a higher failure
rate, corresponds to components wearing out. For this reason, components are
often tested by the manufacturer to weed out faulty ones, and replaced by the
user as part of routine maintenance before the wear-out period is reached.
From now on we’ll assume that any component is in the intrinsic failure
stage, with a constant probability of failure in a given time period.

In more detailed mathematical modelling of reliability, a reliability function R
(t) can be deﬁned such that R(t) is the probability of a component surviving
until time t. In TM353 we shall use simpler measures of reliability such as
the probability of a component surviving for at least 1000 hours. For
example, a measure of 1000-hour reliability R = 0.999 would mean we
should expect only one failure in 1000 hours of operation.

138

Part 3 – Designing dependable systems

Note that for ease of calculation, most of the numerical values of reliability
and availability used in the examples of this Part are much lower than might
be expected in a practical system. A common way of characterising a highly
reliable or available system is often known as ‘ﬁve nines’ – in other words
99.999% reliability or availability, which is just 5.3 minutes downtime in a
year.

Components or subsystems are generally tested in batches to cut down on the
length of time needed. So, for example, if 100 components are tested for 10
hours with a 1000-hour reliability of R = 0.999 we would again expect only
one failure, as the total test time is 100 × 10 = 1000 component hours. Note,
however, that given the random nature of such failures, it would be no
surprise to see no failures, or one or two, in such a test. In practical failure
testing, enough components have to be tested for enough time for there to be
sufﬁcient total failures to be statistically signiﬁcant. There are ways of
determining how long such tests should be, and how reliable the conclusions
are, but these methods are beyond the scope of TM353.

Activity 3.10 (self-assessment)

10 minutes
Suppose 100 components, all within the intrinsic failure period, are tested for
100 hours, and 20 of them fail. Estimate the 1000-hour reliability of a
component.

3.4.3 Combining reliabilities in series
Complex systems will be made up of many subsystems or components, so to
estimate overall system reliability we need to be able to work out the
reliability of combinations of components from the reliabilities of the
individual components.

In this subsection we will be using the concepts of serial and parallel
connections quite extensively. If you have a background in engineering – or
more speciﬁcally electronics – these concepts may well be familiar. But if
not, a little further explanation might be useful.

In a series connection between two or more components or systems, the
output of the ﬁrst forms the input to the second, and so on. In a parallel
connection, an input is presented to two or more components or systems
simultaneously. The outputs of the parallel connections are then connected
together in some way. To check your understanding, try the following
activity.

139

Part 3 – Designing dependable systems

Activity 3.11 (self-assessment)

10 minutes
Figure 3.2 represents two warning lights forming part of a control display. To
operate correctly, each light must have an electrical input and an output.

The two lights are in series in part (a) and in parallel in part (b). If the lights
are prone to failure, so that an input does not generate an output, which
arrangement is preferable as a warning system?

For the arrangement shown in (a), would it be better to have two lights in
series or just one light?

(a)

(b)

Figure 3.2 Warning lights connected (a) in series and (b) in parallel

From the previous activity, we conclude that, in terms of reliability, the
components of (a) are in series because the system fails if either of the
components fails. Those of (b) are in parallel because the system fails only if
both its components fail.

140

Part 3 – Designing dependable systems

Activity 3.12 (self-assessment)

10 minutes

(a) I have both a lock and a bolt on my front door. When both are closed, is

this serial or parallel in terms of reliability?

(b) A rock climber is secured by a rope which is attached to a bolt driven
into the rock. Are the rope and the bolt in series or parallel in terms of
reliability?

Activity 3.13 (self-assessment)

10 minutes
Figure 3.3 represents two switches connected in series electrically. Is this a
series or a parallel conﬁguration from a reliability point of view:

(a) If you want the two switches to close on command in order to energise

an item of equipment?

(b) If they are safety switches ﬁtted to interrupt current ﬂow when the door

of an equipment cabinet is opened?

Figure 3.3 Two switches in an electrical series connection

Note that series or parallel in terms of reliability depends on the function of
the system, not on the physical layout. In the lamp example (Figure 3.2a), the
reliability topology (the layout of the components) was equivalent to the
electrical one (Figure 3.3). In the switches example, the reliability model
depends very much on the purpose of the system.

Systems with components in series and parallel in terms of reliability can be
represented by reliability diagrams. In these diagrams each element is shown
as a rectangle, possibly characterised by an appropriate parameter such as the
value of the reliability function R.

Activity 3.14 (self-assessment)

15 minutes

R1

R2

Figure 3.4 A reliability diagram of two series elements

Consider two components in series as shown in Figure 3.4. Each is
characterised by reliability values R1 and R2 respectively that express the
probability of the component surviving for 1000 hours.

141

Part 3 – Designing dependable systems

What is the overall reliability, R, of the system – that is, the probability that
both elements will survive for 1000 hours? What would be the overall
reliability of n elements in series, each of reliability R1?

Activity 3.15 (self-assessment)

15 minutes
A system consists of four components, each of which must be working for
the system to function. What is the combined 1000-hour reliability of the
system if each component has a probability of survival to 1000 hours of
0.95?

If the number of components were increased to 20, what would be the 1000-
hour reliability?

3.4.4 Combining reliabilities in parallel
The previous discussion concerned the reliability of components connected in
series, but now we turn to components connected in parallel.

Figure 3.5 shows two components in parallel, so the system will fail only if
both the components fail. In this case, in order to derive the overall reliability
of the system, it is best to start from the probability of failure. Let’s deﬁne a
new variable, the probability of failure, Q (rather than the reliability R).
We’ve used different shading for the blocks to indicate that we’re looking at
failure, rather than reliability, probabilities. In the ﬁgure the failure
probability of each component within a given period of time is given by Q,
so for any component the relationship between reliability R and failure Q is
given by the expressions:

R = 1–Q a nd Q = 1– R

since the probability of failure plus the probability of survival must equal 1.
(It must be one or the other!)

Assuming that the failure probabilities are independent, and that the parallel
system will fail only if both components fail, then the overall probability of
failure of the system is obtained by multiplying the individual failure
probabilities, giving Q1Q2. Note that working in terms of Q is the opposite to
working in terms of R. So the overall reliability is given by:

R = 1– Q1Q2.

142

Part 3 – Designing dependable systems

Q1

Q2

Figure 3.5 A reliability diagram of two parallel elements, characterised by
failure, rather than reliability probability

In the case of npa rallel components with the same failure probability Q1 we
have:

R = 1 – Q1

n.

Or, in terms of reliabilities, by substituting in the general relationship
Q = 1–R, we have:

R = 1 – (1 – R1)n.

Activity 3.16 (self-assessment)

20 minutes
An individual component has a 1000-hour reliability of 0.8. What is the
overall reliability of a system with 2, 3, 4, or 5 identical components in
parallel?

You could use a calculator, or set up a simple spreadsheet if you have the
appropriate know-how. You will see how we did this in the activity answers.

We suggest you try to make your own spreadsheet, but you will ﬁnd our
version (which also covers Activity 3.17) via the module website in the
Block 2 Part 3 resources.

Does anything strike you about these numerical values? Repeat the
calculations with an individual component reliability of 0.5.

Activity 3.17 (self-assessment)

15 minutes
Repeat the previous activity, but with identical components with series
reliability, again of (a) 0.8 and (b) 0.5. Comment on the numerical results.

As you will see from the answer to this activity, we used a spreadsheet again
(a version of which can be found via the module website in the Block 2 Part
3 resources), in a format that allowed us to compare the two situations.

143

Part 3 – Designing dependable systems

This activity conﬁrms the remark made in the answer to Activity 3.15, that
‘reliability for a series system can decrease quite signiﬁcantly as the number
of components is increased’. In fact, it shows that comparatively few
components with modest reliability, connected in series, result in almost
certain failure.

3.4.5 More complicated arrangements
Figure 3.6 shows a system made up of components in series and in parallel.
The combined reliability of the three parallel elements is thus 1 – (1 – R3)3.

R1

R2

R3

R3

R3

Figure 3.6 A combination of series and parallel elements

We can evaluate the reliability of this parallel section and call it R’, say. The
system has now been reduced to three series components, as shown in
Figure 3.7.

R1

R2

R'

Figure 3.7 The reduction of Figure 3.6 to three series elements

Activity 3.18 (self-assessment)

15 minutes
What is the overall reliability of the entire system in terms of the reliabilities
of the individual components of Figure 3.7?

More complicated systems can be reduced in a similar way, and the technique
can also be used to choose optimum conﬁgurations. For instance,
Figure 3.8(a) shows three components in series, each with reliability 0.95, so
that the system reliability is 0.953 = 0.857. Suppose that this is considered
insufﬁcient and that it is decided that three identical components should be
added in parallel. This can be done in three ways, as shown in parts (b), (c),
and (d) of the ﬁgure. (There are two possibilities for (d), with the ﬁrst or
third parallel pair separate, but these are equivalent, because all the
components have the same reliability.)

144

0.95

0.95

0.95

Part 3 – Designing dependable systems

0.95

0.95

0.95

0.95

0.95

0.95

(b)

0.95

0.95

0.95

0.95

0.95

0.95

0.95

0.95

0.95

0.95

0.95

0.95

(d)

(a)

(c)

Figure 3.8 An example of more complicated arrangements of elements for failure analysis

Activity 3.19 (self-assessment)

15 minutes
What are the overall reliabilities for conﬁgurations (b), (c), and (d)? Which is
the best choice?

3.4.6 Availability revisited
We mentioned the concept of ‘availability’ earlier as a useful measure for
systems that fail and can be repaired. Two related measures are:

Mean Time Between Failures (MTBF)

and

Mean Time To Repair (MTTR)

which are pretty self-explanatory so long as you remember that MTBF does
not include the repair time. So, for example, if a device fails, on average,
four times a year, and takes an average of 24 hours to repair, the MTBF in
hours is:

(365 × 24/4) – 24 = 2166 hours.

The availability (A) – that is, the proportion of time for which the component
or system is operational – is given by the formula:

A = MTBF/(MTBF + MTTR).

145

Part 3 – Designing dependable systems

Activity 3.20 (self-assessment)

15 minutes
A system is found to have a MTBF of 1000 hours and a MTTR of 10 hours.

What is the availability of the system?

What is the effect on the availability of:

(a) doubling the MTBF?
(b) halving the MTTR?

As can be seen from the answer to this activity, both these modiﬁcations have
the same effect of increasing the availability to 0.995. Simple calculations
like this can allow decisions to be made about whether it is preferable to
improve reliability of components or subsystems, or reduce repair time in
order to achieve a required overall system availability.

When combining availabilities, exactly the same arguments can be used as
combining reliabilities in series or parallel. So, for example, the availability
of n components in series with availability A1 is given by:

A = A1

n

and the availability of n components in parallel is:

A = 1– (1 – A1)n.

Activity 3.21 (self-assessment)

20 minutes
A communication system uses two exchanges, each with availability of 0.995,
linked by three parallel trunk routes, each with an availability of 0.900. If the
selected route fails, the exchanges automatically switch to another route in
negligible time and with negligible probability of a fault in the switch-over
mechanism. Sketch an appropriate reliability diagram and estimate the overall
availability of the system.

3.4.7 Summary
Section 3.4 has introduced some of the important measures of reliability and
availability, and shown how complicated systems consisting of a number of
interconnected components, subsystems, or processes can be analysed. Such
complex systems, with large numbers of individually reliable components,
can have a greatly reduced reliability if there are a signiﬁcant number of
components in series. Conversely, components in parallel can improve
reliability and availability, in essence by introducing redundancy – that is,
spare capacity that can be used if a particular part of a system fails. We’ll
explore redundancy in more detail in the following section.

146

Part 3 – Designing dependable systems

What we’ve not looked at in this section are any issues of power, economics,
stakeholders, and so on–in other wo rds the ‘socio’ aspect of sociotechnical
systems. It is important to bear in mind that models of the type just
introduced can only form part of the much wider picture when designing a
dependable system.

3.5 Redundancy and diversity
We now want to turn to ways in which redundancy can improve reliability.
Earlier you saw that the notions of series and parallel for reliability analysis
might not be closely linked to physical arrangements and interconnections
(the examples of Activity 3.12, for example). In this section, however, the
term ‘parallel’ relates strictly to physical arrangements.

Parallel architectures can be used to try to achieve a range of goals for
improving reliability and availability. The most demanding goal is to supply
sufﬁcient additional capacity to allow full functionality to be maintained in
the event of the failure of the primary system. A less demanding goal would
be to include a secondary or backup system with limited functionality, but
sufﬁcient to allow a safe regime to be established and subsequently a full
repair to be undertaken. Such systems are typically used in ﬂight control,
nuclear reactor control, and other safety-critical systems, perhaps in addition
to a duplicated primary system aimed at maintaining full functionality in the
ﬁrst instance. A more everyday version of this would be to keep an old
mobile phone as backup in case your phone breaks, or a fan heater if your
central heating fails. The most modest redundant system might simply be
used to identify a failure and then shut down the overall system immediately.

3.5.1 Redundancy
The simplest approach to parallel redundancy is known as synchronous
duplex, or hot standby. In such an arrangement two ‘channels’ with identical
speciﬁcation (which could be processors, or other more complex systems) are
connected in parallel, with the same input, and the outputs of each channel
are compared.

Channel 1

Channel 2

Comparator

Figure 3.9 Synchronous duplex, or hot standby, to provide redundancy for
reducing failure

If the two outputs are identical, then correct operation is assumed. If they are
not identical, either the complete system is shut down, or some form of fault
diagnosis, possibly automatic, is carried out to identify the faulty channel.

147

Part 3 – Designing dependable systems

Note that such a simple system can be used only where high availability is
not vital: even if fault diagnosis and repair is possible, the system may be out
of action for a time. So it might not be suitable for a life support system, for
example, but it may be adequate for routine medical monitoring, where a
lower degree of availability can be tolerated.

A variation on hot standby is called worker/standby or cold standby. Here the
channels are duplicated, but one is normally inactive, and does not produce
any output. The active channel is designed to detect its own errors (it may be
assisted in this by the inactive channel). On detection of a fault, the inactive
channel takes over control. Each channel takes regular turns at being active
in order to prevent dormant faults in the inactive channel and the changeover
unit remaining undetected.

The effectiveness of standby methods depends on:

.

.

.

the reliability of the comparator/changeover unit
the ability to detect the faulty channel
a very low probability of a fault occurring in the working channel while
the other is being repaired.

Activity 3.22 (exploratory)

10 minutes
Can you think of a problem that might arise if each channel is absolutely
identical in both hardware and software?

Comment
If each is absolutely identical, then either a hardware fault or a software fault
could affect both channels at the same time. This was a major contributory
factor to the loss of the Ariane 5 rocket in 1996, when both the primary
software system and the backup failed in an identical manner soon after lift-
off (Gleick, 1996).

If higher availability is needed, more than two parallel channels may be used.
For example, so-called triple modular redundancy (TMR) is often used to be
resistant to independent hardware errors. In TMR the outputs of three
hardware units are compared and a two-out-of-three strategy adopted. If the
output from one device differs from the other two it may be taken
temporarily out of service, or some type of automatic fault repair might be
used.

A similar approach can be used with software, where three (or more)
independently implemented software versions are employed in parallel.

148

Part 3 – Designing dependable systems

3.5.2 Diversity
The diversity problem has been hinted at above, in that identical – that is,
non-diverse – hardware or software systems may, in some circumstances, fail
identically. Remember that all our arguments about reliability and availability
have assumed independent probabilities of failure in different components or
subsystems.

Hardware diversity can be addressed by using processors of different types,
or chipsets sourced from different manufacturers. Any hardware design faults
should then be independent.

Software diversity is rather more complex, and involves issues of
organisational structure, management, in-house development versus
outsourcing, and so on. Common approaches – in principle, at least – to
ensure software diversity include:

.

.

.

using different teams to develop the parallel versions
different programming languages used by the different teams
different design methodologies used by the different teams.

Unfortunately, even adopting this strategy is not entirely foolproof. The
system to be developed will begin with a requirements analysis and a detailed
speciﬁcation. If this speciﬁcation contains inconsistencies or errors, even
independently developed software versions may fail in the same way in a
particular set of circumstances. And perhaps more surprisingly, different
software developers can fall into the same traps when writing code, even if
the speciﬁcation is correct and they are using different programming
languages or methodologies. This phenomenon is probably due to a common
culture within software development, with developers following similar
education and training, and being taught similar methods and algorithms. As
a result they can make the same mistakes!

3.5.3 The Airbus 340 ﬂight control system
The Airbus 340 ﬂight control system adopted many of the diversity
techniques just described. The following account is taken from Ian
Sommerville’s book Software Engineering (2016). It is a very condensed
account of a very complex system. Nevertheless, even this brief account
illustrates many of the important issues just described.

The Airbus ﬂight control system is shown in simpliﬁed form in Figure 3.10.

149

Part 3 – Designing dependable systems

Input

Primary Flight Control System 1

Output

Channel 1

Splitter

Comparator

Channel 2

Primary Flight Control System 2

Primary Flight Control System 3

Secondary Flight Control System 1

Channel 1

Splitter

Comparator

Channel 2

Secondary Flight Control System 2

Status

Output

Status

Output

Status

Output

Status

Output

Status

Output

Filter

Filter

Filter

Filter

Filter

Figure 3.10 The Airbus 340 ﬂight control system (Source: Sommerville, 2016)

Sommerville writes:

In situations where high availability is required, you have to use several
self-checking systems in parallel. You need a switching unit that detects
faults and selects a result from one of the systems where both channels are
producing a consistent response. Such an approach is used in the Airbus
340 series of aircraft, in which ﬁve self-checking systems are used.

In the Airbus ﬂight control system, each of the ﬂight control computers
carry out the computations in parallel, using the same inputs. The outputs
are connected to hardware ﬁlters that detect if the status indicates a fault
and, if so, then the output from that computer is switched off. The output is
then taken from an alternative system. In more than 15 years of operation,
there have been no reports of situations where control of the aircraft has
been lost due to total ﬂight control system failure.

The designers of the Airbus system have tried to achieve diversity in a
number of ways:

150

Part 3 – Designing dependable systems

1 The primary ﬂight control computers use a different processor from the

secondary ﬂight control systems.

2 The chipset that is used in each channel in the primary and secondary

systems is supplied by a different manufacturer.

3 The software in the secondary ﬂight control systems provides critical
functionality only – it is less complex than the primary software.
4 The software for each channel in both the primary and the secondary
systems is developed using different programming languages and by
different teams.

5 Different programming languages are used in the secondary and primary

systems.

(Sommerville, 2016, pp. 321–322)

You may wish to know that the ﬁrst Airbus 340 entered service in 1993 and
while they are no longer manufactured, many remain in service. There have
been no fatal accidents in their use, at time of writing in autumn 2023.

3.6 Malicious attacks and security
This Part of TM353 would not be complete without some consideration of
protection against malicious attacks, even though such issues are not a major
subject of the module. In particular, TM353 will not cover such topics as
cryptography, protocols or access control. Security engineering is a
specialised business, and you are referred to Anderson’s book if you wish to
explore it in more detail. In addition, you can ﬁnd a link to a free OpenLearn
introductory course on cybersecurity in the links for Activity 3.24, with
further links to the Open University’s modules and programmes in
cybersecurity.

The following brief description of a selection of methods and strategies
employed by those with malicious or criminal intent is taken from the Open
University module T215 Communication and Information Technologies. You
may already be aware of at least some of these either from previous study, or
your general use of ICT.

. Hard copy information theft relates to information written on paper
rather than to electronic memory. Fraudsters could use information
obtained from diaries and notebooks (possibly including PIN or
password details), bills, invoices and envelopes discarded in rubbish
bins or intercepted in the post.

. Phishing is where potential victims are lured into following links to fake

websites where they are encouraged to reveal personal details or
information such as passwords, PINs or security codes, which fraudsters
subsequently use.

. A 'man-in-the-middle' (MITM) attack is one in which messages between
sender and receiver are intercepted. In the context of banking, a man-in-
the-middle attack usually involves the creation of a bogus website that
is used as a relay, for example, to a bank’s own website. A customer
logon screen on the relay site can appear normal, but the relay site is
engineered to collect data contained in the interactions between the two

151

Part 3 – Designing dependable systems

parties or manipulate the content of the transactions for malicious
purpose. A bogus email could include a link to the relay site to initiate
the deception.

. Malware (malicious software) is generally downloaded from

compromised websites and email attachments. Malware may include
spyware, key-loggers and Trojans all of which are capable of collecting
information being typed into a computer, such as website URLs and
personal and login details, including passwords. Malware can send
‘harvested’ information to fraudsters. Inadequately protected computers
can also be hijacked to assist, for example, with phishing campaigns.
Skimming is where hidden devices are used, for example, close to ATM
card entry points. The devices are capable of capturing card and user
login details. Fraudsters may also install logging devices in ePOS
equipment situated, for example, at petrol ﬁlling stations or restaurants.
Social engineering attacks are where individuals inadvertently reveal
personal details through lottery scams, cold calling and increasingly
through online social networking sites.

.

.

(Jones, 2012, p. 256)

Activity 3.23 (exploratory)

20 minutes
For each of the above fraud methods, how far do you think organisations or
system designers can combat the fraudsters, and how much is it the
responsibility of the user?

Comment
Here is the author's personal thoughts. Note, though, that even where the user
has to take responsibility, there may be a signiﬁcant need for user
information and education that an organisation should take seriously into
account.

Hard copy theft. This is mostly the responsibility of users: do not leave
records of passwords or PINs where they can be seen/stolen. However,
organisations have a responsibility to distribute PINs or passwords in as
secure a way as possible. Some companies are also moving towards
approaches such as biometrics to reduce the possibility of hard copy theft.

Phishing. Again, users have the most responsibility: do not click on hot links
in unusual emails; if an unexpected offer seems too good to be true, it
probably is! Many phishing attempts become clear by inspecting the dubious
URLs often revealed by rolling the mouse over without clicking. However,
organisations also bear some responsibility, and some companies include
account info in emails and attempt to educate users against falling prey to
phishing attacks.

Man-in-the-middle attack. There’s not a lot a user can do about this, except
to beware of unwittingly succumbing to a bogus email. Combatting man-in-
the-middle attacks needs robust encryption and authentication techniques
designed into the system – while at the same time maintaining ease of use.
This is not always an easy task.

152

Part 3 – Designing dependable systems

Malware. Users have a responsibility to install antivirus and anti-spyware
software and keep it up to date on their own devices. Organisations and
system designers also need to monitor external threats and ensure adequate,
regularly updated protection of their own systems. The move towards cloud
computing should, in principle, systematise such protection, but users will
always need to observe good practice.

Skimming. Protection against skimming needs to be designed into such
devices as sales terminals and ATMs, although users also need to be aware of
unusual features.

Social engineering attacks. Very much up to the user, although again
organisations have a duty to inform and educate users about such risks.

Activity 3.24 (exploratory)

45 minutes
The module website (in the Block 2 Part 3 resources) contains an activity
based on current information and advice concerning security and malicious
attack. There is also a link in this activity to the OpenLearn module on
cybersecurity mentioned earlier in this section. You can do this activity now,
or wait until you have concluded your study of this Part.

3.7 Summary
As noted in section 3.3, much of this Part can be summed up under the
headings of achieving dependability through:

.

.

.

threat avoidance
threat detection/removal
threat tolerance/recovery.

Here the generic term ‘threat’ is used to mean anything that threatens the
required level of dependability.

Avoidance, in the case of faults and errors at the design stage, covers such
techniques as good software development practice and methodology. In the
case of safety, it includes such things as double switches for dangerous
equipment to keep hands out of harm’s way, or fail-safe controls such as a
‘dead man’s handle’. For security, it means design to avoid successful attack,
such as ﬁrewalls and the use of encryption.

Detection/removal, for faults and errors, means ensuring good practice in
veriﬁcation, validation, testing and debugging at the design stage. For safety,
it includes hazard detection and removal by means of sensors, safety valves,
and so on. For security, it means checking for unusual activity such as denial
of service attacks or attempts to break passwords, and then taking appropriate
action, even shutting down a system if deemed necessary.

153

Part 3 – Designing dependable systems

Tolerance/recovery, in the case of faults and errors, means the use of
redundancy and diversity, and perhaps self-monitoring and repair. For safety
we could think of sprinkler systems to control aﬁ re, for example. For
security, it could be a range of techniques for recovery from an attack, such
as a good backup system to replace corrupted ﬁles with the minimum of
delay.

We began this Part with the Introduction to Ross Anderson’s book, and we’ll
ﬁnish it with his conclusions, which have the vivid title of ‘Beyond
“Computer Says No”’. As mentioned at the beginning of this Part, Anderson
is not afraid to write in a fairly polemic and sometimes non-academic style;
you may not agree with all of his remarks, and may feel the need to ﬁnd
supporting evidence for some of his assertions. Nevertheless, there is a lot of
good sense in this short chapter – and even though it is directed primarily
towards security issues, it has much to say that is relevant to dependability in
general – and much that you will hopefully ﬁnd familiar from elsewhere in
this module.

Activity 3.25 (exploratory)

40 minutes
Read Chapter 29 of Anderson’s Security Engineering (2020) via the module
website in the Block 2 Part 3 resources. Write a few sentences (about 100
words) summarising the author’s views as they might apply to dependability
in general.

Discussion
We have included our response to this activity in the text rather than with
other activity answers, as it forms a ﬁtting end to Part 3. Clearly this is only
our response, and yours might be very different:

Anderson says that security engineering is about ‘ensuring that
systems are predictably dependable in the face of all sorts of
malice’. When looking at dependability of IT systems more
generally, the issue is less one of protecting against malice than
protecting against unexpected failures of many different kinds.
However, the same requirement exists for a wide understanding of
human, institutional and economic factors. The three issues
identiﬁed by Anderson are relevant to all IT systems: complexity
(of the interconnections between components in a sociotechnical IT
system), sustainability (in both environmental and systems
maintenance terms) and politics (issues of power).

You have met issues of complexity in Block 1 of this module, and politics/
power in both Block 1 and Block 2. Issues of sustainability, especially around
IT systems maintenance but to some extent environmental, will arise in
Block 3, which addresses the general question of how to ensure that IT
systems remain successful over time.

154

Part 3 – Designing dependable systems

Answers to activities
Please note that some activities do not have answers, if they are open-
ended, simply give instructions for reading or media use, or if a comment
is given in the text.

Activity 3.2
1000 hours is 60 000 mins. So the system is available, on average, 59 995/
60 000 of the time, or 99.99%. The major assumptions are: (a) that the
failure is detected immediately, and (b) that someone is available immediately
to carry out the reboot. If the system runs 24 hrs a day, and cannot be
rebooted by an out-of-hours user, this may not be the case.

Activity 3.3
On average a person may have one or two minor crashes or ‘freezes’ per
month which simply require rebooting. The author has had two serious
hardware failures requiring repair in the past ﬁve years, but both of these
took 1–2 weeks to remedy. As a precaution against loss of service the author
takes backups of important ﬁles on both an Open University server and on
removable storage media. They also have an older laptop that they can use if
absolutely necessary. As far as security is concerned, they use suitable
encryption for their home WiFi system and try to take a sensible approach to
passwords for both local machines and remote services – that is, not using
passwords that could easily be guessed or found in a dictionary by a
password cracking program, and changing them regularly. They also have
regularly updated antivirus software. Their broadband provider fails very
occasionally (as most broadband does), which is a key point of failure; on
such occasions if they really need to continue with internet access they can
do so via a mobile phone’s data connection.

Activity 3.4
(a) 0.9 × 0.9 = 0.81
(b) 0.1 × 0.1 = 0.01 (think of it as 1/10 × 1/10 = 1/100)
(c) 0.82 = 0.8 × 0.8 = 0.64
(d) 3 × 104 = 3 × 10 000 = 30 000
(e) 10–4 = 1/10 000 or 0.0001 so 3 × 10–4 = 0.0003
(f) 2 × 102 + 3 × 102 = 5 × 102 (200 + 300 = 500)
(g) 2 × 102 × 3 × 102 = 6 × 104 (200 × 300 = 60 000; when multiplying in

this notation you add the powers of 10)

(h) 4 × 102 × 2 × 103 = 8 × 105 (400 × 2000 = 800 000)
(i)
(j) 0.82 = 0.64, so 1 – 0.82 = 0.36, and 0.36/3 = 0.12

(1 – 0.5)3 = 0.53 = 0.5 × 0.5 × 0.5 = 0.125 (or ½ × ½ × ½ = 1/8)

155

Part 3 – Designing dependable systems

Activity 3.6
Any deﬁnition of a system depends on where the system boundary is drawn.
The major difference is that Anderson gives a whole range of common
usages of the word ‘system’ –a s ort of hierarchy of complexity, starting from
what we might consider to be a component or an element, rather than a
system – while Block 1 Part 1 of TM353 sticks to the higher levels of
Anderson’s list when deﬁning a system. But Anderson’s deﬁnitions 4, 5, and
6 seem perfectly compatible with Block 1 Part 1, and the fact that he states
he will generally take the broadest view (6) seems to align his approach with
that of this module.

Activity 3.8
(a) There are sixteen 4-bit combinations:
0011
0001
0111
0101
1011
1001
1111
1101

0000
0100
1000
1100
Four of these contain exactly three 1s. Therefore the probability of three
1s is 4/16 = 0.25.

0010
0110
1010
1110

(b) A total of 7 can be thrown in six ways:

1 + 6
6 + 1
2 + 5
5 + 2
3 + 4
4 + 3
So the probability is 6/36 or 1/6 or 0.167.

(c) The probability of the normal link failing is 0.001, and the probability of
the backup failing is 0.01. Assuming that the failures are independent,
then the probability that both will be out of action is 0.001 × 0.01 =
0.00001 or 1 in 100 000.

Activity 3.10
Total test time is 100 × 100 = 10 000 component hours. If 20 components
fail, we would expect 2 to fail in 1000 component hours. Therefore the
reliability R = 0.998.

156

Part 3 – Designing dependable systems

Activity 3.11
As a warning system, the arrangement in (a) fails at the ﬁrst failure of a light
because the electrical circuit will be broken and neither light will work. The
arrangement in (b) fails only when both lights have failed because the failure
of one light does not affect the other. So (b) is preferable to (a).

For the arrangement in (a) it would be preferable to have only one light. The
probability of one or other of two identical lights failing is twice the
probability of one light failing, so the system with two lights would be twice
as likely to fail.

Activity 3.12
(a) This is an example of parallel reliability. The door can be forced only if

both the lock and the bolt fail.

(b) This is an example of series reliability. The climber will fall if either the

rope breaks or the bolt becomes detached. (However, in a real climbing
example, things would be more complex. For example, there would be
backup bolts in parallel reliability to prevent serious accident if one were
to fail.)

Activity 3.13
(a) If you want the two switches to close on command in order to energise
an item of equipment, then they are in series from a reliability point of
view. If either switch does not close, the equipment will not work.
(b) If they are safety switches to interrupt current ﬂow when the door of an
equipment cabinet is opened, then they are in parallel from a reliability
point of view. The current ﬂow will be interrupted on opening the door
even if one of the switches fails to open.

Activity 3.14
The two reliabilities are independent events, so the overall probability of
survival to 1000 hours is given by multiplying the individual values. Hence

R = R1 × R2.

Similarly, for n elements in series each of reliability R1

R = R1

n.

Activity 3.15
For the system of four components the 1000-hour reliability is 0.954 = 0.81.
For a system of twenty components it would be 0.9520 = 0.36.

This example demonstrates the very important point that reliability for a
series system can decrease quite signiﬁcantly as the number of components is
increased.

157

Part 3 – Designing dependable systems

Activity 3.16
We used a spreadsheet to calculate these values (a copy of which can be
found on the module website). The formula we used is shown in Figure 3.11.
We have stored the reliability in cell C1 so that we can change it from 0.8 to
0.5 as required in the second part of the activity. Such a spreadsheet can
easily be modiﬁed to other reliabilities or numbers of parallel components.
But a calculator will easily result in the same conclusions.

The most noticeable feature for a reliability of 0.8 is that increasing the
number of parallel elements beyond three or four gives only a marginal
improvement in overall reliability.

Figure 3.11 Spreadsheet showing reliability of parallel elements, with a single
element reliability of 0.8

When each component is rather more prone to failure, increasing the number
of parallel elements has a similar effect, but with a more marked initial
improvement in reliability.

Figure 3.12 Spreadsheet showing reliability of parallel elements, with a single
element reliability of 0.5

158

Activity 3.17

Part 3 – Designing dependable systems

Figure 3.13 Spreadsheet showing reliability of series elements

Activity 3.18
The overall reliability of the system as shown in Figure 3.7 is:

R = R1 R2 R’.
Or, in terms of the values in Figure 3.6:

R = R1 R2 [1 – (1 – R3)3].

159

Part 3 – Designing dependable systems

Activity 3.19

0.95

0.95

0.95

0.95

0.95

0.95

0.95

0.95

0.95

(b)

0.95

0.95

0.95

0.95

0.95

0.95

0.95

0.95

0.95

0.95

0.95

0.95

(d)

Figure 3.14 An example of more complicated arrangements of elements for
failure analysis

. The reliability of each of the two, 3-component branches in (b) is 0.953 so

the combined reliability is:
1 – (1 – 0.953)2 = 0.980.

. Each 2-component group of (c) has reliability 1 – (1 – 0.95)2 so the

overall reliability is:
[1 – (1 – 0.95)2]3 = 0.993.

. The reliability of the 4-component group of (d) is:

1 – (1 – 0.952)2 = 0.990.

. The reliability for the 2-component group is:

1 – (1 – 0.95)2 = 0.998.

So the overall reliability of (d) is therefore 0.990 × 0.998 = 0.988.

The conclusion is therefore that conﬁguration (c) gives marginally the best
overall reliability. In retrospect this is perhaps not surprising, since in this
arrangement each parallel pair improves the reliability of the sections that are
then connected in series, thus mitigating the undesirable effect of the series
combination.

(a)

(c)

160

Part 3 – Designing dependable systems

Activity 3.20
The availability A = 1000/1010 = 0.99.

(a) If the MTBF is doubled to 2000 hours, A = 2000/2010 = 0.995.
(b) If the MTTR is halved to 5 hours, A = 1000/1005 = 0.995.

Activity 3.21
Figure 3.15 shows a reliability diagram for the system, with the components
characterised by their availability values. The three routes are in parallel
because the system will function provided at least one of the routes is
operational.

0.900

0.995

0.900

0.995

Exchange

Exchange

0.900

Routes

Figure 3.15 Reliability diagram for a communication system

The availability of this parallel route combination is:

1 – (1 – 0.900)3 = 0.999.

The routes are in series with the exchanges, so the overall availability is:

0.995 × 0.999 × 0.995 = 0.989.

161

Part 3 – Designing dependable systems

References
Anderson, R.J. (2020) Security engineering: a guide to building dependable
distributed systems. 3rd edn. Indianapolis, IN: John Wiley.

Gleick, J. (1996) ‘Little bug, big bang’, New York Times Magazine, 1 December.
Available at: http://www.nytimes.com/1996/12/01/magazine/little-bug-big-bang.html
(Accessed: 1 March 2024).
IFIP Working Group 10.4 (no date) Introduction to the working group. Available at:
https://www.dependability.org/?page_id=265 (Accessed: 1 March 2024).

Jones, R. (2012) T215 Communication and information technologies, Block 4 Part 7:
Banking on ICTs. Milton Keynes: The Open University.
Sommerville, I. (2016) Software engineering. 10th edn. London: Pearson.

162

Acknowledgements

Grateful acknowledgement is made to the following sources:

Text
Box 1.1: Allen, T. (2022) ‘From cables to cloud: How IT changed while
building the Elizabeth Line’, Computing. 9 June 2022. The Channel Company
EMEA.

Box 1.4: Goff M., (2014), ‘Elec Patient Records & Beneﬁts to Clinicians:
Actor-Network Study Technological Innovation NHS’, International
Federation for Information Process.

Activity 2.13 table: Meyer (2014) Agile! The Good, the Hype and the Ugly,
Springer International Publishing.

Figures
Figure 1.2: Challenger, R. and Clegg, C. (2011) ‘Crowd disasters: a socio-
technical systems perspective’, Contemporary Social Science, 6(3). The
Academy of Social Sciences.

Figure 1.3: Mumford, E. (1995) Effective Systems Design and Requirements
Analysis: The ETHICS Approach. Macmillan.

Figure 1.4: Berdichevsky, D. and Neunschwander, E. (1999) ‘Toward an
ethics of persuasive technology’, Communications of the ACM, 42(5).
Association for Computing Machinery.

Figure 2.2: adapted from: http://learnaccessvba.com/application_development/
waterfall_method.htm.

Figure 2.3: Adapted from: http://learningwalkthrough.blogspot.co.uk/p/
systems-development-life-cycle.html.

Figure 2.6: The Multiview methodology (Wood-Harper et al., 1985, p. 17):
Wood-Harper, A.T., Antill, L. and Avison, D.E. (1985) Information Systems
Deﬁnition: The Multiview Approach, Oxford, Blackwell Scientiﬁc
Publications.

Figure 2.8: Bell, S. and Wood-Harper, A.T. (2003) ‘How to Set Up
Information Systems: A Non- specialist’s guide to the Multiview Approach’.
Earthscan.

Figure 2.9 and Table 2.2: Beedle, M., van Bennekum, A., Cockburn, A.,
Cunningham, W., Fowler, M., Highsmith, J., Hunt, A., Jeffries, R., Kern, J.,
Marick, B.Martin, R.C., Sutherland, J. and Thomas, D. (2001) The Agile
Manifesto, https://agilemanifesto.org/.

Figure 3.10 and accompanying text: adapted from Sommerville I., (2016),
‘Software Engineering’, 10th Edition, Pearson Education Limited.

Acknowledgements

163

Part 3 – Designing dependable systems

Cover image
TM353 Cover image: exdez / Getty Images.

Every effort has been made to contact copyright holders. If any have been
inadvertently overlooked the publishers will be pleased to make the necessary
arrangements at the ﬁrst opportunity.

Module team

Academic staff
Mustafa Ali, author and critical reader

Simon Bell, author and critical reader

Chris Bissell, author and critical reader

David Chapman, author and critical reader

Ray Corrigan, author and critical reader

Val Edgar-Nevill, critical reader (inclusive curriculum)

Joyce Fortune, author and critical reader

Christine Gardner, critical reader

Kevin Gowans, ﬁgure descriptions

Cathy Gowling, curriculum manager

Amy Hansford, curriculum manager

Howard Harris, critical reader

Ann Hartley, curriculum manager

Andy Hollyhead, critical reader

Holly Hopkins, curriculum manager

Neil Murray, author and critical reader

Sungmin Park, critical reader

Magnus Ramage, module team chair, author and critical reader

Yvonne Shepherd, curriculum assistant

Zoe Tompkins, author and critical reader

Steve Walker, author and critical reader

Vicky Woolven, curriculum assistant

164

External consultant
Ian Martin, external critical reader

Alison Walton, external critical reader

External assessor
Professor David Wastell, Emeritus Professor of Information Systems and
Head of Division, Nottingham University Business School

Support staff
Fiona Bowtell, learning and teaching librarian and critical reader

Martin Chiverton, sound and vision producer

Chris Cox, production editor

Peter Finn, digital development editor

Zoe Gipson, digital development editor

Linda Hall, online services

Louise Haydock, media project manager

Inga Jones, learning and teaching librarian

Alex McIlroy, learning and teaching librarian

Jon Owen, graphics media developer

Matt Page, digital development editor

Adrian Singh, interactive media developer

Paul Whittingham, digital development editor

Chris Winter, media project manager

Emma Johnson, digital development editor

Jonathan Martyn, digital development editor

Ryann Overbay, production editor

Vicky Eves, senior graphics media developer

Acknowledgements

165


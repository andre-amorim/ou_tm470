TM353 IT systems: planning for success

Block 3
Ensuring continuing success
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

ISBN 978 1 4730 3928 5

2.1

Contents

Introduction to Block 3

Learning outcomes

Part 1 – IT systems maintenance and evolution

Introduction

1.1 IT systems change within organisations

1.2 Understanding systems maintenance and evolution

1.3 Legacy systems and IT systems evolution

1.4 Trends in IT systems evolution over time

1.5 Summary

Answers to activities

References

Part 2 – Planning for an uncertain future

Introduction

2.1 Technology forecasting

2.2 Uncertainty in understanding future trends

2.3 Introduction to scenario planning

2.4 Methods for scenario planning

2.5 Scenario planning within the context of IT systems

2.6 IT strategy: combining forecasting and uncertainty

2.7 Summary

Answers to activities

References

Part 3 – How to recover from failure:
Business Continuity Planning

Introduction

3.1 Attack on the Wires

3.2 Business Continuity Planning

3.3 ICT Readiness for Business Continuity

3.4 Summary

5

6

7

9

10

18

26

35

48

49

55

59

61

61

72

74

79

96

106

108

109

118

121

123

124

131

146

158

Answers to activities

References

Acknowledgements

Module team

158

175

177

178

Introduction to Block 3

Welcome to Block 3 of TM353, Ensuring continuing success in IT systems.
So far in this module, you have looked at planning for IT systems success
through analysis, design and implementation. But how do you (attempt to)
ensure that IT systems remain successful over time? This ﬁnal block presents
a series of answers to this question.

The block begins with an examination of the way IT systems evolve over
time. In Block 1, you were introduced to the idea of evolution by exploring
how ideas drawn from complexity studies such as adaptation and co-
evolution could be applied in the context of planning successful IT systems.
You learned that IT systems are embedded within larger organisational
environments which include other IT systems. Co-evolution of IT systems is
necessary − and inevitable − if they are to survive and thrive in the face of
change.

You will learn about how to support this co-evolution in the following ways:

.

.

.

.

.

looking at how IT systems evolve in further detail with the aim of
understanding how the viability of such systems can be maintained − that
is, how they can remain successful − in the face of a changing
organisational environment
examining the way IT systems can cope with an uncertain future, ﬁrst by
trying to predict aspects of that future, and second by exploring scenarios
which enable the system to be successful in a wide range of different
future situations
understanding methods for disaster recovery and business continuity,
should the environment of a system change in ways that lead to its
potential failure
expanding an understanding of success beyond the purely organisational
to look at issues of the digital divide, both local and global, particularly in
relation to issues of (post-) colonialism and climate change
exploring the ways in which project and operations management can help
in ensuring ongoing IT systems success.

This block has a similar structure to Block 2: it consists of three printed Parts
(which are in this book), and two online Parts (which can be found through
the module website). Each of the printed Parts is also supported by a variety
of online activities and third-party readings (also on the module website). In
particular there is one extended video which you will watch via the module
website.

As with the previous blocks, this block ends with a tutor-marked assignment
which draws together the ideas and tools from the block. We hope you ﬁnd
Block 3 useful as a way to understand the ongoing success of IT systems.

Introduction to Block 3

5

Ensuring continuing success in IT systems

Learning outcomes
Your study of Block 3 will contribute to your ability to meet the following
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

2.1 Analyse IT systems in their wider sociotechnical context, including
trends in their environment
2.3 Be able to extract useful information from highly technical documents,
including journal articles, product information and websites
2.4 Investigate, analyse, think critically, evaluate and synthesise
information from appropriate sources.

Key skills:

.

.

.

.

3.1 Be able to learn independently from third-party materials
3.2 Learn in familiar and unfamiliar situations and translate that
knowledge to other situations
3.3 Communicate effectively using written and graphical presentations as
appropriate
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

Part 1 – IT systems maintenance
and evolution

Magnus Ramage and Mustafa Ali

Part 1 – IT systems maintenance and evolution

Part 1 – IT systems maintenance and
evolution

Introduction
This Part is about the way IT systems change within organisations. Change is
constant within most organisations today – product changes, policy changes,
staff changes, technological changes, and structural changes. At the heart of
many of these changes, and tightly bound up with other changes, are changes
to IT systems – to the technology being used, to the ways in which it’s used,
to the infrastructure around the technology, to the interaction between the
technology and the organisation. It’s hard to think of many organisational
changes that don’t involve broader IT systems change, and likewise it’s hard
to think of many technological changes of any size that don’t have a large
impact on the rest of the organisation.

Some of these IT systems changes are deliberate, planned, and a core part of
the organisation’s strategic aims. Others happen as a result of other decisions
in the organisation, or as a result of external forces (strategic or technical).
Some of the required changes are hard to make because the IT systems are
not sufﬁciently ﬂexible, and are often then labelled as legacy systems. In
addition, the change processes frequently tend to happen in an incremental,
step-by-step way that can be thought of as a process of IT systems evolution.

By the end of this Part, you will have learned about processes of IT systems
evolution, how it works and how organisations can respond to it. In addition,
you will have examined the difference between system maintenance and
system evolution, the crucial distinction between planned evolution and
unplanned evolution, and frameworks for handling the former. You will also
have learned about the dynamics of IT systems evolution and historical trends
within IT systems evolution (and what can be learned from that).

Note: Although there are models of evolution such as the punctuated
equilibrium model in which changes are large-scale, ‘revolutionary’ and
occur in short spans of time, standard evolutionary models tend to be
framed in terms of small-scale, incremental transformations over
extended time periods.

In summary, the aims of this Part are to:

.

enable you to understand how IT systems evolve

. make you aware of the difference between system maintenance and

.

system evolution in the context of legacy systems
enable you to appreciate the different roles played by people, organisation
and technology in the evolution of an IT system

. make you aware of historical trends in IT systems evolution.

9

Part 1 – IT systems maintenance and evolution

1.1 IT systems change within organisations
In some change situations, the focus is very clearly on the technology –
hardware and software – that is being introduced, replaced, or altered. For
example, rolling out a new version of an operating system such as Microsoft
Windows across an organisation is a technically focused change that needs
considerable technical skill and knowledge. It also requires staff to get used
to working with the new software, and changes to their day-to-day routines;
depending on the changes found in the new version of the software, the
organisation may be able to do things quite differently from how it did them
before. The same is true of hardware implementations. An organisation that
decides to issue all of its managers with a handheld device, or wearable
technology, that allows them to read and respond to email and instant
messages wherever they are is making a technical change – but, in turn, this
requires a great deal of change in working practices.

As stated previously, in this Part the focus will be on intentional rather than
emergent changes. We will be looking at IT systems change in the context of
evolution. You might be wondering whether this means that there is no place
for ‘revolutionary’ changes to IT systems – large-scale and fundamental
changes, or development from scratch. We suggest that revolutionary change
is remarkably rare within the IT systems of organisations. Even when
organisations start from scratch with new forms of technology, or implement
new business processes that throw away the old ones completely, there are
still many residual aspects of the previous IT system – the organisational
culture, the skills people have built up working with or in the old IT system
environment, the form of business that the organisation is in, the people
outside the organisation with whom it has dealings. Some of these things will
stay the same, many will change somewhat as a result of the IT system
change, and only a very few will change completely. Certainly there will
always be radical aspects of many IT system change programmes, but they
rest upon the framework of the status quo and are surrounded by aspects that
are only changing in small ways or not at all. In that sense even the largest
IT system change is still evolutionary. To lead us towards an understanding of
IT systems evolution, in the next section we will look at some of the
shortcomings of the traditional model of IT systems development and change
– the IT system (or software) development life cycle which you examined in
detail in Block 2 –with a view to understanding what has motivated the shift
to the idea of IT systems evolution.

1.1.1 The life cycle model and its ﬂaws
Since the late 1960s, it has been taken for granted among most IT systems
academics and professionals that IT systems development followed a standard
set of stages, known as the systems (or software) development life cycle
(SDLC). These stages derive from the early importance of systems analysis
and systems engineering techniques within IT systems work. As you saw in
Block 2, there are many versions of the life cycle, each with different precise
methods and stages, but most follow a similar pattern.

10

Part 1 – IT systems maintenance and evolution

Activity 1.1 (self-assessment)

15 minutes
In Block 2, it was seen that Avison and Fitzgerald suggest that six stages can
be identiﬁed as common to all life cycle models. List each of these stages
and brieﬂy explain what they involve. (You might want to look back at
Block 2 in order to answer this question.)

There are two features of life cycle models that need to be stressed:

First, they largely assume that one stage is followed by another, with little
scope for returning to earlier stages; in short, there is an absence of feedback.
Early versions of the life cycle model were often referred to as the ‘waterfall’
model, because of the way that control over the design would ‘ﬂow’ in one
direction only. This derives from a view of project management that regards
the various stages of a project as each being under the control of a different
person or group who has to sign off that stage (approve it as complete)
before it can pass to the next stage.

Second, while the models are clearly described as being concerned with IT
systems development (that is, the initial creation of an IT system), in practice
they are taken to cover the whole lifespan of an IT system, from initial
conception toﬁ nal abandonment or replacement of the system. This is
important to stress, because the ‘review and maintenance’ stage of the life
cycle occupies by far the longest part of the IT system’s lifespan – most IT
systems of any scale are used for several years before they are replaced. In a
sense, this Part of Block 3 is about that ﬁnal stage and its importance; in
another sense it is about a view which argues that the life cycle model is no
longer relevant. There is undoubtedly much that is useful about life cycle
models. In the development of a complex IT system that attempts to model
and support an even more complex organisational setting, a degree of order
in the development process is highly beneﬁcial. The process becomes easier
to understand and more manageable. The methodologies based on life cycle
models, and the techniques that support those methodologies, are well
understood and tried in a large number of different settings. However, as you
saw in Block 2, the life cycle model is problematic in many ways and we
will review some criticisms that have been made of this model in what
follows.

1.1.2 Challenges and changes to the life cycle model
There have been many criticisms of the life cycle model. Avison and
Fitzgerald (2003, pp. 34–39) sum these up with a list of weaknesses of the
model:

.

.

its failure to meet the needs of management
the instability of process models

11

Part 1 – IT systems maintenance and evolution

.

.

.

.

.

.

.

.

its inﬂexibility
user dissatisfaction
problems with documentation
lack of control
incomplete systems resulting from the model
backlog in applications development
unrealistic nature of the ideal approach the model presents
its emphasis on ‘hard’ thinking

. workload placed on maintenance teams.

These criticisms and others (notably the lack of iteration in the classic
waterfall model) have led to various modiﬁcations of the life cycle model,
such as Boehm’s (1988) spiral model, which retains the idea of a set of ideal
stages of development, but repeats those stages several times over. Extending
this concept of many stages of development has been a series of approaches
based around rapid prototyping – quickly developing prototype versions of
software which can be tested and presented to potential users, then modiﬁed
in the light of problems to produce another version, which is in turn tested
and presented to users. In recent years, this approach has become known as
Agile software development which you looked at in Block 2.

The weakness of the ‘maintenance’ phase of the life cycle model is of
particular concern to us here. Maintenance can consume between 40% and
90% of an IT system’s costs over its lifespan (Bennett, 1996; Dehaghani and
Hairahimi, 2013). This has always been the case, but with the rise in
organisations’ awareness of legacy systems, it is no longer sufﬁcient simply
to regard the maintenance phase as something not very important that
happens at the end of the life cycle; it rather becomes key to the whole life
of an IT system.

Lastly, the life cycle model is largely aimed at the ‘bespoke’ development of
IT systems, or at least of their software components. Traditionally, it was the
case that in most organisations, the majority of software used was written in-
house, with only a small amount (such as operating systems) being bought
externally. Increasingly, this has changed, and much more software is either
bought directly from suppliers (often known as commercial off-the-shelf
(COTS) software), is lightly modiﬁed from templates provided by external
suppliers, or is licensed with a subscription on a ‘software as a service’
(SaaS) basis. This makes a model based on development inappropriate. The
role of suppliers in IT systems maintenance and evolution has become
increasingly important, if not critical, as a key factor determining their
viability. We will brieﬂy explore the supplier issue and the power
relationships between suppliers and organisations later in this Part.

For all of these reasons, the life cycle model has become less and less
relevant to a good understanding of IT systems over their lifespan and
prompted a shift towards a focus on IT systems evolution.

12

Part 1 – IT systems maintenance and evolution

1.1.3 IT systems evolution
As stated in the introduction, we can make a distinction between two types of
IT systems evolution: planned evolution and unplanned evolution. The
former is that which organisations intend to happen and build into their
decision-making; the latter is that which occurs whether or not organisations
choose it. In practical use, it is hard to distinguish planned from unplanned
evolution since both will be happening at any one time within most settings.
For the purposes of this Part however, the distinction is very useful as it
allows us to separate evolution, or change that is intended, from that which
happens without the intention of an organisation’s members. There are further
differences: the two types of evolution behave in different ways, and have
different requirements for their control and for the skills of those involved.
They rely upon different techniques to understand and handle them. This Part
has a greater focus on planned than unplanned evolution, although both are
considered here.

The planned evolution of IT systems is part of the normal organisational
decision-making process. It must therefore ﬁt with an organisation’s strategy
and timescales. Importantly, it should not be thought of as an unusual event,
but something that happens regularly and frequently. It is rational, systematic
and incremental, rather than unusual and haphazard.

However, because it happens over time and is planned by different people
and according to different goals, the overall outcome of planned evolution
may not appear entirely rational. This is in keeping with the problems with
strategic planning that many people studying management behaviour have
observed: however carefully organisations try to establish strategies and to
control events, there is inevitably considerable slippage between intention and
reality. As Mintzberg (1994) has written:

Strategic planning is not strategic thinking. Indeed strategic planning often
spoils strategic thinking, causing managers to confuse real vision with the
manipulation of numbers. And this confusion lies at the heart of the issue:
the most successful strategies are visions, not plans.

(Mintzberg, 1994, p. 107)

Thus, it is not the case that a planned evolution process will always appear
rational if looked at from a distance or over a long time. This can be
explained, in part, by virtue of the fact that IT systems on the whole are
changed incrementally, in small-scale stages – an evolutionary process rather
than a revolutionary one.

Unplanned evolution, by contrast, reﬂects the limitations of planning in a
different way from that just described. As Ramage points out:

[IT] systems evolve in lots of ways that are not intended by their ‘owners’.
The people in the organisation change, and thus their technical skills, or
knowledge of how to handle some sorts of information, or knowledge of
how a piece of technology works, are lost to the organisation. The
organisation changes – new strategies might be developed, or new business
areas entered, or management might change and so affect many decisions,

13

Part 1 – IT systems maintenance and evolution

or the organisation (if it is commercial) might be taken over by another
organisation. The technology also changes – an operating system or
application software might receive updates from its suppliers, hardware
might need upgrading, new platforms for application development become
available. These are all changes to the [IT] system, or to its immediate
environment, but they are not changes made by the [IT system] decision
makers. However, decision makers can be in a position to respond to the
changes. This may be done through an analysis of the dynamics of [IT
systems] evolution; through an examination of historical trends; or through
strategic techniques for future readiness such as scenario planning.

(Ramage, 2006)

We will look brieﬂy at what can be gained from an examination of historical
trends later in this Part, and you will explore scenario planning in the next
Part.

Activity 1.2 (exploratory)

20 minutes
Think about the ways in which organisations that you know about, or have
read about, plan their IT systems. Does it appear rational? Does it progress in
big chunks or little by little? Who is involved in the decision-making?

Box 1.1 describes an example of an IT system evolving in two ways – from
being intended for use within an organisation to being sold as a generic
product; and from a well-deﬁned use within the original organisation to being
used in various ways by various departments. Importantly, what we can see at
work here are evolutionary processes that are both technical and
organisational.

Box 1.1: ‘Trailblazing’ public sector cloud migration at
Forestry and Land Scotland

The goal was to move everything to public cloud, but when Nick
Mahlitz, senior digital infrastructure manager at Forestry and Land
Scotland did the numbers it turned out it would take ﬁve years at least.
Unfortunately, he only had two.

Forestry and Land Scotland (FLS) was founded in 2019 when
responsibility for Scottish forests was fully devolved to the Scottish
government. It manages more than 1.5 million acres of national forests
and land, with a remit to promote and manage, not just forestry but
tourism, leisure and nature conservation.

Before it separated from the UK Forestry Commission FLS upgraded its
data centre with hyper-converged infrastructure (HCI) appliances, to
host its mix of ageing and modern applications, with the intention of
moving it all to Microsoft Azure public cloud once the data had been
sorted and separated and the legacy applications refactored.

14

Part 1 – IT systems maintenance and evolution

As well making it easier to manage, moving to Azure, the Scottish
government’s favoured cloud, would allow FLS to comply with the
country’s strict rules on sustainability, cut costs and ease recruitment
pressures, or so the plan went.

However, the 30-year-old legacy applications including an ERP system
built on Oracle WebLogic and ‘horrendously non-compliant databases’,
had other ideas. ‘These systems are so temperamental and sensitive to
any environmental changes, even at the IP networking level,’ said
Mahlitz. Unfortunately, they were also central to many operations and
could not be replaced in the short term. Refactoring was apparently the
only option.

In 2021 Mahlitz realised that to refactor the ERP and other core systems
so they could be migrated into Azure would take at least ﬁve years. And
there were two hard deadlines to meet. One was compliance with
Scotland’s environmental regulations, and another was the ending of the
data centre contract in December 2023. There were other plans that
couldn’t wait ﬁve years too, including modernising the stack and
introducing Starlink to improve connectivity for the lumberjacks and
foresters that make up 70% of the agency’s 1,300 people. The agency
also makes extensive use of GPUs for 3D modelling of the forest, with
plans to expand its AI/ML capabilities for tracking tree diseases and for
tourism.

Stop-gap becomes plan A
The migration simply couldn’t afford to wait for ﬁve years, so Mahlitz
started looking for alternatives.Already a customer of Nutanix and
Microsoft from the earlier data centre revamp, he spoke to their
representatives for advice. ‘So a very casual conversation with Nutanix
revealed that there’s this product coming up called NC2 clusters, where
you can put the Nutanix layer inside of the cloud. Well, that could be
my contingency plan.’

NC2, Nutanix’s hybrid cloud platform, allows applications to run on a
variety of on-premises and multiple clouds, meaning that FLS could
plausibly vacate the datacentre on time giving it more time for the
refactoring.

A proof of concept followed, joining the on-premises data centre to NC2
on Azure in a US data centre and migrating production workloads to it.
Even the old legacy systems behaved themselves. ‘In fact they ran like a
charm,’ Mahlitz said. Following that, the stop-gap solution became plan
A.

‘I sat down with Nutanix, and I sat down with Microsoft. I explored the
sustainability behind this, I explored the costs behind this, I explored the
management of all this, and I struggled to come up with a reason why
we wouldn’t do this as a primary plan.’

15

Part 1 – IT systems maintenance and evolution

‘Everything made sense. I can reduce costs, I can have a single
management plan so I don’t need to up train or recruit any new staff,
and I meet my sustainability targets.’

Eighteen months of due diligence followed, to ensure this road less
travelled really could lead to the required reduction in data centre
footprint and energy use, without running into cost overruns, licencing
issues and the rest. Satisﬁed, in June, the whole system – 300
applications, 30 terabytes of data and the supporting infrastructure – was
migrated to NC2 on Azure in the UK, a process that took one month
assisted by Microsoft and Nutanix. With everything now in the cloud,
the on-premises data centre can be safely shut down.

FLS has converted some of its Nutanix licences to run in Azure and
plans next year to do the same with another cloud provider to keep
options open and reduce the risk of being locked into a single provider.
While Mahlitz and his team are understandably delighted that the
scheme paid off, the real-world test will be what it can deliver now and
into the future. ‘I think the success story will be that I have a forester in
the middle of nowhere, and he or she can access all our core servers not
realising it’s all running on NC2, using all these cloud services, and not
having to return to the ofﬁce to report. That’s the proof of what we’ve
delivered.’

A trailblazing use case
Mahlitz told Computing that as far as he is aware, lifting-and-shifting a
whole data centre to a virtualised layer in the public cloud is unique for
a public body in Europe, a sector that is generally risk-averse and tied
into deals with integrators and consultancies.

‘It’s very much a trailblazing of use case for public sector,’ he said. ‘In
the public sector nobody’s taking a risk. Nobody’s doing that due
diligence.’

He added that the early successes of the FLS migration has ‘generated a
great deal of interest’ among other government departments with a
cloud-ﬁrst strategy, who don’t want to wait years as their old systems
are refactored for cloud.

(Source: Leonard, 2023)

A model of planned evolution
There are clearly many ways by which the planned evolution of IT systems
occurs, and there are many models for the planning of IT systems evolution
(such as the methodologies for IT systems design you encountered in Block 2
Parts 1 and 2). Nonetheless, they all tend to ask questions like the following:

. What is the current state (both organisational and technical) of our IT

systems?

. What decisions do we wish to make about changes to the IT systems?

16

Part 1 – IT systems maintenance and evolution

. How can we ensure that those decisions will stand up to future changes in

the organisation and its environment?

We can separate the ﬁrst question into two, so as to consider organisational
and technical issues separately, although in an IT system, which is an
example of a sociotechnical system, the two are closely intertwined so that in
each case the consideration of one includes some consideration of the other.
This leads to a four-stage model of planned evolution:

.

.

.

evaluation of the organisational impact of existing IT systems
examination of the value of existing ‘legacy’ software and other technical
components, and looking at ways to evolve those technologies
decision-making about which changes to the existing systems are
appropriate (which ought to include consideration of the power relations
between stakeholders discussed earlier in this module)

. making the IT system ready for future changes (‘future-prooﬁng’), and

addressing risks that arise in the process of making changes.

The cyclical relationship between these stages is summed up in Figure 1.1. In
general, it is likely to be the case that the evolution process begins at the top
of the cycle (with evaluation) and then proceeds step by step. However, it is
possible to begin at another point in the cycle and work around it, and it is
also possible to consider two stages simultaneously (e.g. evaluation and
legacy systems). This model is not intended to be followed as a ‘recipe’ for
planned evolution, but rather as a simple context within which to place the
four stages.

Evaluating the
current information
systems

Readying the
IS for future
change

Examining the
current (legacy)
systems

Deciding about
IS change

Figure 1.1 A model of planned IT system evolution

This model will be taken as the context for the rest of the discussion in this
Part, which will largely be focused on planned evolution. We will start by
looking at IT systems maintenance and evolution.

17

Part 1 – IT systems maintenance and evolution

1.2 Understanding IT systems maintenance and
evolution
As stated earlier, maintenance was originally taken to refer to that phase of
the life cycle after a system has been designed and implemented, and while it
is being used. Considered in these terms, it is almost always the longest
phase in the life cycle, and certainly the most expensive. We might deﬁne
maintenance, following Davidsen and Krogstie (2010a, p. 708), as‘ the
process of modifying a software system or component after delivery’.

Although IT systems are more than just software, the importance of the latter
should not be underestimated, so we need to examine the issue of software
maintenance more closely. Software maintenance is an area that is important
to any effective software engineering process, and it has been studied for
several decades, although with not nearly as great an effort as the work put
into initial software development.

A long-established typology (ﬁrst introduced by Swanson (1976), updated by
Burch and Grupe (1993), and adopted in the international standard ISO/IEC/
IEEE (2022)) divides software maintenance into four types, which may in
some cases overlap:

.

.

.

.

corrective maintenance: changes which are intended to ﬁx errors in the
original software
adaptive maintenance: changes to the software toﬁ t a new platform or
other changes in its technical environment
perfective maintenance: changes to the functionality of the software at the
request of users or to react to changing business needs
preventive maintenance: changes to avoid software deteriorating over time
or to make it more reliable.

Many studies have been conducted on the balance of effort which typical
organisations put into these these types of software maintenance (typically
focusing just on the ﬁrst three, as preventive maintenance was a later addition
to the typology. Davidsen and Krogstie (2010a) summarise the results as:
24% of effort being on corrective maintenance, 19% on adaptive
maintenance, and 57% on perfective maintenance. This balance seems have
roughly held for several decades.

Swanson’s typology points to an ‘evolutionary’ understanding of maintenance
that goes beyond the obvious association between this term and the idea of
‘maintaining’ something – that is, preserving a thing as it is – which can be
seen in the following IEEE deﬁnition of software maintainability:

The ease with which a software system or component can be modiﬁed to
correct faults, improve performance or other attributes, or adapt to a
changed environment.

(IEEE, 1990)

18

Part 1 – IT systems maintenance and evolution

This typology has been around for a long time, but is still useful in many
situations. However, it is not always clear what constitutes successful
software maintenance. One possible way of measuring this is described in
Box 1.2.

Box 1.2: Critical success factors for a software
maintenance project

1 Functionality: The maintenance operation should at least preserve if
not enhance the functionality of the system under maintenance.
Every new release must contain as a minimum those functions and
data contained by the last release, as long as they are required.
2 Quality: The maintenance operation should preserve if not increase
the quality of the system under maintenance. An important goal of
any software maintenance project is to increase the product quality
by the pre-emptive elimination of error causes, by tuning the system
to use fewer resources or by improving the quality of the code and
the documentation.

3 Complexity: The maintenance operation should not increase the
complexity of the product relative to the size. The maintenance
operation may lead to an increase in the number of components and
subsystems, but it should not lead to an increase in their interactions.
They should remain at least at the same level, if not decrease as a
result of reengineering efforts.

4 Volatility: The maintenance operation should not lead to an increase
in the volatility of the product – the propensity of an information
system to change its state from evolution to revolution [which]
demands a new system development life cycle with all of its
accompanying costs and risks.

5 Costs: The relative costs per maintenance task should not increase,

provided the tasks are of similar scope.

6 Release deadlines: The agreed upon release deadlines should be kept

and delays should not increase.

7 User satisfaction: The user satisfaction rate should remain at least at
the same level, if not increase. Any measure of user satisfaction must
be founded on a comparison of what the customer feels should be
offered and what is ultimately delivered.

8 Proﬁtability: Last but not least, the maintenance operation should be

proﬁtable or at least cover its costs.

(Source: extracts from Sneed and Brössler, 2003, pp. 192–194)

Each of the critical success factors is quantiﬁable – because the study of
software maintenance has arisen as part of software engineering, those
involved with it are usually keen to be able to quantify success. In their

19

Part 1 – IT systems maintenance and evolution

article, Sneed and Brössler describe in more detail the ways in which each
factor can be quantiﬁed.

Many methods for software maintenance have been outlined by software
engineers. Some of these build on techniques used in initial software
development; others use techniques specialised to the maintenance situation –
notably those around software re-engineering and reuse. These are discussed
later in the context of legacy systems.

Despite the importance of software maintenance, it is frequently seen as a
lesser activity than initial software development. Part of the reason for this is
technical – software development has been, and continues to be, difﬁcult,
both in terms of identifying the purposes for which the software is to be
used, and in the technical building of the software. The lower status of
software maintenance also arises from a perception of the relative values of
carrying out original work and what is seen as making alterations to existing
work. The implicit comparison is often made with an engineered product
such as a car, where high-status engineers design and build the car, but much
lower status mechanics then maintain it through the rest of its lifespan. In
fact, given that the bulk of software maintenance activity is to do with
changing existing software so that it better meets user and business needs,
this is an unreasonable perception. Supporting this view, Swanson and Beath
(1989, p. 57) argue that:

Historically, maintenance has taken a back seat to new system development,
as we have indicated. In our view, there are good strategic reasons for
inverting the current emphasis. The installed base of an application system
portfolio provides the ongoing services to the host organisation. Often,
these services include support [of] critical day to day business operations,
in the processing ofﬁ nancial transactions, or in the control of operational
logistics, for example. Failure to focus upon the quality of this support
undermines the IS mission.

(Swanson and Beath, 1989, p. 57)

Glass (2004, p. 112) argues strongly against a negative view of software
maintenance, and that in fact it needs to be regarded as crucial:

By disrespecting [software maintenance], we’ve turned our collective back
on (a) what most people in software do, (b) what most of the money in
software is spent on, and (c) our greatest opportunity to please our clients
and customers. […] Better software engineering development leads to more
maintenance, not less. […] Maintenance is a solution, not a problem […]
And, if it’s a solution, we should be doing more of it, not less.

(Glass, 2004, p. 112)

The negative attitude to software maintenance has been one reason for a shift
in terminology to software evolution; as you saw earlier, the difference
between maintenance and evolution is far from clear. Probably a more
important reason, however, has been growing awareness of the inadequacy of
the software life cycle, with its relegation of maintenance to a single stage at
the end.

20

Part 1 – IT systems maintenance and evolution

Although some use of ‘software evolution’ is simply a process of replacing
one term by another, for some authors there is a signiﬁcant shift signalled by
the new term. Bennett and Rajlich (2000) argue that the software life cycle
should be reinterpreted as a ﬁve-stage process:

.

.

.

.

.

initial development
evolution
servicing
phase-out
close-down.

In this model, the maintenance stage is split into two stages: evolution and
servicing, followed by a gradual phasing out and then closing down of the
software. Especially important in their model is the evolution stage, which
they describe as seeking ‘to implement (and revalidate) possibly major
changes to the system without being able a priori to predict how user
requirements will evolve’ (p. 80). They note that, at this stage, the software is
‘core to the organisation in terms of business strategy and proﬁt’ (p. 80).
They also argue that there needs to be close links between the team carrying
out the further evolution of the software and those who carried out its initial
development (with these preferably being the same people).

Continual change is also important in that it requires the capability of the
software to be continually updated. Arguing that longevity of software is
beneﬁcial to an organisation, if it is regularly maintained, Zvegintzov (1998,
p. 20) writes that:

As a software application survives, it changes continually, functionality
being added and modiﬁed to meet changing needs. In this continual
evolution or ‘maintenance’, software fulﬁls one of its characterising
functions: its modiﬁability, its capacity for change, its softness.

(Zvegintzov, 1998, p. 20)

We will now look at two speciﬁc approaches to software maintenance and
evolution – the ﬁrst being focused around planned evolution, the second
around unplanned evolution.

21

Part 1 – IT systems maintenance and evolution

1.2.1 Maintenance and evolution

Activity 1.3 (self-assessment)

2 hours 15 minutes
Read ‘Software evolution: past, present and future’ (1996) by Keith Bennett,
which you will ﬁnd via the module website in the Block 3 Part 1 resources.
How do you understand the difference between software maintenance and
software evolution?

If you work with software as part of an IT system, what are the maintenance
issues around that software? Can you identify the four types of maintenance
mentioned by Bennett (perfective, adaptive, corrective and preventive) going
on in your organisation? (Note that Bennett refers to this last type as
preventative.)

To some extent, the difference between system maintenance and system
evolution is a matter of perspective. We might want to say that system
maintenance is more readily associated with a life cycle comprised of
something like the following stages: system speciﬁed (analysis, requirements,
etc.); system implemented (design, coding, testing, etc.); system maintained
(bug ﬁxing and incremental changes, but no fundamental changes). System
evolution, by contrast, insists that systems are constantly changing, drawing
in new components, tweaking others, evolving new requirements and so on.
On this basis, we might want to deﬁne IT systems evolution as follows:

The ongoing revision of IT systems, gradually changing over time, building
upon existing components (organisational and technical), to meet changing
business needs.

(Ramage, 2006)

When considering the development of IT systems, we take the view that
evolution, rather than maintenance, is a more realistic attitude in terms of
thinking about how to ensure continued success. As Truex, Baskerville and
Klein have argued:

[S]ystems should be under constant development, can never be fully
speciﬁed and, like the organizations for which they are built, are subject to
constant adjustment and adaptation. Since organizational change has
become so important to organizational survival, IT systems must also
incorporate continuous change. This incorporation goes beyond adaptable
systems, and includes creating support for organizations that cannot help
but emerge.

(Truex, Baskerville and Klein, 1999, p. 123)

The concept of software evolution is now widely written about in the
software engineering literature; for example, one of the standard textbooks on
software engineering states that:

22

Part 1 – IT systems maintenance and evolution

Historically, there has always been a split between the process of software
development and the process of software evolution (software maintenance).
[…] This distinction between development and maintenance is increasingly
irrelevant. Very few software systems are completely new systems and it
makes much more sense to see development and maintenance as a
continuum. Rather than two separate processes, it is more realistic to think
of software engineering as an evolutionary process where software is
continually changed over its lifetime in response to changing requirements
and customer needs.

(Sommerville, 2016, p. 60)

It is this sense of a continuum, of evolution being an inevitable part of the
way that software behaves, which is relevant to this Part, and we will look at
this concept in more detail later. It should be noted that this continuum
perspective has been embraced by the DevOps (‘development’ and
‘operations’) movement, alongside the Agile approach to software
development described in Block 2, as a practical response to the changing
nature of IT systems evolution.

1.2.2 Dynamics of software evolution
The approach to software evolution discussed in the previous section is
concerned with deliberate and intended change to software systems. A
different approach would be to study the dynamics of software evolution: the
processes by which software changes regardless of anyone’s intentions.

Studying the dynamics of software evolution in this way has been studied by
Meir (Manny) Lehman and his colleagues from the 1960s onwards. The work
began at IBM, studying the development process of software within that
organisation. Examining the development of program code over many
releases, Lehman (1980) formulated a set of ‘laws’ to describe the dynamics
of program evolution. This concept developed into a wider concept of the
evolution of software, using ideas from system dynamics as a way of
modelling the evolution.

In its most developed version, Lehman presented eight laws (see Table 1).

23

Part 1 – IT systems maintenance and evolution

Table 1: Lehman’s laws of software evolution (adapted from Cook et al., 2006,
p. 7)

1. Continuing change

2. Increasing complexity

3. Self regulation

4. Conservation of organizational
stability

5. Conservation of familiarity

6. Continuing growth

7. Declining quality

8. Feedback system

[Software] systems must be continually
adapted else they become progressively
less satisfactory.
As a [software] system evolves, its
complexity increases unless work is
done to maintain or reduce it.
The evolution process of [software]
systems is self regulating, with a
distribution of product and process
measures over time that is close to
normal.
The average effective global activity rate
in an evolving [software] system is
invariant over a product’s lifetime.
During the active life of an evolving
[software] system, the average content of
successive releases is invariant.
The functional content of a [software]
system must be continually increased to
maintain user satisfaction with the
system over its lifetime.
Stakeholders will perceive a [software]
system to have declining quality unless
it is rigorously maintained and adapted
to its changing operational environment.
The evolution processes in [software]
systems constitute multi-level, multi-
loop, multi-agent feedback systems and
must be treated as such to achieve
signiﬁcant improvement over any
reasonable baseline.

Lehman’s concern was largely with the evolution of software code over time,
and especially the way in which that code grows. The breadth of applicability
of these techniques can be seen in the title of a lecture given by Lehman in
1974 – ‘Programs, cities, students, limits to growth?’ (republished in Lehman
and Belady, 1985, pp. 133–164). The explicit connection to the techniques of
system dynamics can also be seen in this title, which reﬂects that of the book
The Limits to Growth (Meadows et al., 1972), which used the modelling
techniques of system dynamics to explore the risks to the world of unlimited
economic and industrial growth.

Although Lehman’s work was carried out some decades ago, much of it has
been veriﬁed by more recent authors. De Oliveira and de Almeida (2016)
analysed the applicability of laws 1–6 in the IT systems within a medical
company and a ﬁnancial company, and readily concluded all six laws applied
in the ﬁrst organisation and several others in the second. Likewise, Li et al.
(2017) analysed the evolution of eight typical open-source mobile apps using
Lehman’s laws – they found good evidence for half of the laws (1, 3, 6 and

24

Part 1 – IT systems maintenance and evolution

7) but not the other four. It seems that the laws are still useful today, if not
uncontestable.

Activity 1.4 (self-assessment)

2 hours
Lehman’s laws are discussed in greater detail in an article by Godfrey and
German (2013), ‘On the evolution of Lehman’s Laws’, which you will ﬁnd
on the module website in the Block 3 Part 1 resources. Read this article now.

What conclusions can you draw from the various theories in the article for
the ways in which evolution happens in software that you are familiar with?
If you do not have direct experience of software evolution, try applying the
theories to well-known software that has gone through several ‘generations’,
such as Microsoft Windows or a web browser.

Lehman’s approach to software evolution rests upon very detailed
mathematical studies of program code, and undoubtedly only captures some
of the issues around IT systems evolution. Nonetheless, it has led to
important results, and gives us well-grounded ways to understand the
dynamics of software growth.

Activity 1.5 (self-assessment)

15 minutes
You have read about two approaches to software evolution here: the software
maintenance/evolution approach discussed in the article by Bennett you read
in Activity 1.3, and the studies of software evolution dynamics by Lehman
about which you have just been reading. Both authors come from the ﬁeld of
software engineering, and draw upon each other’s work, but take quite
different stances. Summarise their differences and their similarities.

1.2.3 Going beyond software to IT systems
Although software is an important part of any IT system, it is not the only
part. Equally important are the organisation within which the software is used
(and its processes, knowledge, structures and culture) and the people who
work with the software (building it, using it, and managing it).

As you learned in Block 1, these other parts of the IT system evolve just as
much as the software does. They evolve partly on their own, and partly as a
result of interactions with other components in the IT system which can be
understood in terms of the process of co-evolution. In addition, when we
consider the IT system as a whole, we can see that it has ‘emergent’
properties which are not due to any one component – people, organisation or
technology – but to the interactions between the components. Because of
these emergent properties, it is important to consider the evolution of the IT

25

Part 1 – IT systems maintenance and evolution

system taken as a whole, and not just the evolution of its component parts. It
is this wider sense that is referred to here as IT systems evolution.

We will now move on to consider an issue that in a sense simply forms one
aspect of software maintenance and evolution, yet has grown beyond these to
become widely discussed in its own right – the question of legacy systems.

1.3 Legacy systems and IT systems evolution
‘Legacy systems’ is a term that has been used for several years in the
computer trade press as a synonym for ‘old, out-of-date computer software
that we don’t quite know what to do with’. The outdated nature of the
software may be attributed to its actual age, or it may be more to do with the
platforms on which the software is built – the operating system, the
programming language, or the technologies (such as enterprise resource
planning software). There is thus an element of fashion, and of a drive to sell
current technologies, in the popular use of the term. A typical description
from the trade press suggests that ‘many legacy systems can be migrated to
the cloud only at great pain and expense’ (Babcock, 2015). The
characterisation of the state of both the old and the new software changes,
but the style here is common – of referring to the old, badly structured
software by comparison with the new software that uses the then-current
(although ever-changing) new technologies.

Box 1.3 illustrates the scale of the problems involved in legacy systems
issues.

Box 1.3: Cloud Currency – Travelex leaves legacy behind

Foreign exchange specialist Travelex entered administration in the
middle of 2020. Today it runs its full IT stack in-house, employs more
than 300 IT staff, and technology sits at the heart of the business.
Founded nearly 50 years ago, Travelex is practically a household name.
Its retail outlets are ubiquitous, and it has partnerships with banks,
hotels and airports.

But that long legacy has its own challenges, which were thrown into
stark contrast when ﬁntech startups like Starling and Monzo started
encroaching on the company’s traditional business areas with new app-
based services. The company had been trying to refactor its IT for years
in the face of this rising competition, with limited success. ‘There were
some initiatives done in the past to rebuild or replace a large part of the
stack with sort of a new monolithic, all-encompassing solution’, says
Hans van der Waal, the company’s global IT director, who joined in
March 2019. (‘What you typically saw in those years – I wasn’t there so
this is hearsay – is that it took, let’s say, two years and a lot of money,
and then ultimately it didn’t do what it’s supposed to do, and they
pulled the plug on it’.

26

Part 1 – IT systems maintenance and evolution

Cloud kicks in
When van der Waal joined, ‘everything’ was on-prem. Data centres in
three regions hosted both self-developed and third-party systems. There
were only two SaaS systems – HR and project management – but the
company knew it had to do more. (‘They were trying to do two things at
the same time: moving to the cloud and modernising – or refactoring or
rearchitecting – at the same time’.

Travelex’s hefty application stack of about 200 apps made that an
‘extremely difﬁcult’ task that could have taken ‘decades’. That’s when
van der Waal came in. The ﬁrst thing he did was start a company-wide
movement to Ofﬁce 365, which ‘helped a lot in the pandemic’, and
begin migrating some of the company’s Active Directory to the cloud.
Everything was going well – until it wasn’t.

System shock
A cyber-attack at the end of 2019, plus COVID-19 shutting down travel,
caused huge disruption at Travelex. Coming on top of the increased
competition and IT challenges, the ﬁrm was forced to enter
administration, although it kept operating after a debt restructure and
new ownership. Van der Waal says it was the shock needed. ‘It was a
sort of a game changer in how we started to transform because it was
very clear that we needed to accelerate our efforts, and also prioritise
anything that makes us more resilient and less concerned with risk from
a cybersecurity point of view’.

It was here that Travelex formed a partnership with AWS – a decision
made ‘very much around commercials and also because we were in the
midst of the pandemic’ – for both cloud computing and professional
services, which helped the company migrate to the cloud ‘much faster’.

Eventually van der Waal’s team developed a programme to migrate
nearly 95% of the remaining on-prem workloads to the cloud and
decommission anything that was no longer needed. ‘Ultimately I think
we migrated about 600 servers, and we decommission about 1,000. It
was very much a rationalisation and a lift-and-shift exercise’.

This was an opportunity for the company to arrange its data locations;
now the European business sits in one of AWS’ European regions, its
ANZ operations in an Australian region and so on. One region, China,
presented a more signiﬁcant challenge, due to regulations that make it
legally difﬁcult to move data out of the country. ‘We had to go through,
I think, three or four iterations of design before we came to something
that was acceptable and also would work […] It’s not that we had
pushback from the regulator, it was more about us as a combination of
three parties [Travelex, network provider Checkpoint and local partner]
ﬁguring out a way to be compliant with local laws’.

Closing the silos
Travelex’s transformation is still ongoing, but it wouldn’t even have
reached this point if not for a preceding business-level change. ‘Initially

27

Part 1 – IT systems maintenance and evolution

[Travelex] was very much sort of a siloed organisation, where the front
ofﬁce staff and the commercial people and the product people were
demanding all kinds of change and initiatives from IT, and then IT
struggling to supply that’, says van der Waal. ‘If everyone asks for
things, then it’s difﬁcult to prioritise and give good transparency and
make things predictable’.

That wasn’t sustainable, so the company decided to reform the way IT
operated, turning it into ‘part of the cross-functional structure’ to deliver
on roadmap items. Encouraging joint responsibility in this way made
most IT operations – like maintenance, support and change – part of the
same work stack other business units shared. ‘[We are now] much more
transparent and much more aligned. That sort of siloed demand-supply,
that’s probably how we worked in the past. With more agile ways of
working, you see that alignment and transparency have massively
increased’.

Today the IT department makes a real effort to reach out across the
business. ‘We have a newsletter, we post blog posts on our intranet, we
do townhalls, we do very much face-to-face type of gatherings’. The
results speak for themselves. With an integrated approach to IT – now
all fully managed in-house but living on the cloud – Travelex is more
prepared to face the next challenge than ever before.

(Source: Allen, 2023)

When discussing legacy systems, focusing explicitly on software needs some
care. The view of IT systems that we take in this module is that they are a
combination of people, organisation and technology, and that these aspects
are inevitably intertwined. To focus on the technology is risky in that it can
ignore this interconnection and suggest that technology can be understood in
its own terms. This is not the case, and in this section we will often be
returning to the sociotechnical nature of the issues under consideration.
Nonetheless, the main focus of this section will be on technology rather than
any other aspect.

It might seem strange to be stressing that point so strongly, but we will be
largely drawing upon work from the discipline of software engineering which
Sommerville (2016, p. 21) describes as ‘an engineering discipline that is
concerned with all aspects of software production from the early stages of
system speciﬁcation through to maintaining the system after it has gone into
use’. Its orientation as an engineering discipline makes it pragmatic rather
than theoretical, but also largely concerned with the technological artefact
(the software system) rather than the artefact in context. This orientation is
slowly changing as software engineers become aware of the impact of their
work on organisations. Considerable work has been done in collaboration
with those working in the ﬁelds of management science, IT systems, systems
thinking and sociology, among others. Much of the work from software
engineering that we will be drawing on here shows something of this wider
perspective, although it still regards the software artefact as its primary area

28

Part 1 – IT systems maintenance and evolution

of interest. The consequence of this focus is that the software engineering
literature typically uses the term ‘system’ in a much narrower sense than its
use in the IT systems literature − so care needs to be taken when
encountering the term ‘system’ in the literature we are considering here.

Activity 1.6 (exploratory)

15 minutes
If you work on IT systems in some capacity, think about the legacy issues
within your organisation. (If you don’t work on IT systems, or if your
organisation does not have legacy issues, try to think about legacy issues in
an organisation with which you have some familiarity.) Do you have
problems that resemble those found at Travelex (Box 3.1)? Are the problems
principally technical or do they also involve other issues?

Do you know how software maintenance works within your organisation or
one you are familiar with? What are the main issues involved in it?

1.3.1 Understanding legacy systems
Let us move now to the more general issues around legacy systems. As
discussed earlier, the term ‘legacy system’ is generally used to refer to IT
systems which are regarded as problematic and out of date. Bennett, Ramage
and Munro (1999, p. 153) outline a wider set of problems with legacy
software:

Large scale (often millions of lines of monolithic code); old age; obsolete
languages such as assembler; lack of consistent (or any) documentation;
poor management of data; degraded structure following years of
modiﬁcation; and ﬁnally, a support team which is totally reliant on the
expertise and knowledge of expert individuals.

(Bennett, Ramage and Munro, 1999, p. 153)

Note that this deﬁnition is largely technical, focusing on issues around
software rather than the wider system, and in fact Bennett and his colleagues
quite explicitly referred to legacy software. A consideration of a legacy
system needs also to take into account organisational and human issues as
well as those of software.

Sommerville (2016) deﬁnes legacy systems as:

sociotechnical computer-based systems that have been developed using
technology that is now obsolete. However, they don’t just include legacy
hardware and software. They also rely on legacy processes and procedures
– old ways of doing things that are difﬁcult to change because they rely on
the legacy software. Changes to one part of the system inevitably involve
changes to other components.

(Sommerville, 2016, p. 576)

29

Part 1 – IT systems maintenance and evolution

The term ‘legacy systems’ gained particular currency during the late 1990s
because of two external phenomena that required most organisations to re-
examine and make changes to their IT systems:

. The ‘millennium bug’ (also known as the ‘Year 2000 problem’ or ‘Y2K’),
where much older software was expected to break because it used a two-
digit representation of the year.

. The introduction of the euro, which changed accounting requirements in

many organisations’ ﬁnancial software.

However the concept has continued to be of considerable use both within the
academic and the technical press, and can be considered using the following
deﬁnition:

Legacy systems can be deﬁned as software systems that have been built
years ago by using old technologies and methods but they are still an
integral part of business. Many organizations have a lot of legacy systems
up and running even today and they ﬁnd it hard to update and maintain
such systems. These systems have high operation cost, do not take
advantage of the latest computing environments, and are difﬁcult to
maintain and modify.

(Vijaya and Venkataraman, 2018, p. 50)

More technical deﬁnitions are also still in use, and can be useful so long as
we recognise the wider systems issues:

When we refer to a system as being legacy what we’re really saying is that
the system is built in a way that differs from how we’d choose to do so
today. Legacy systems may have been written well, using the best
technologies and tools available at the time, but those technologies are now
out-of-date. A system written in 2001 using Java 1.2 and Oracle 8i may
have made perfect sense but if you wrote it now, you’d at least use the
latest versions available or even something different entirely (Scala,
MongoDB, and so on didn’t exist then).

(Annett, 2019, p. 1)

Alderson and Shah (1999) suggest that the confusion over deﬁnitions of
legacy systems partly arises from an unaddressed clash between four
viewpoints, which tend to be held by different groups of people. The four
viewpoints they identify are:

1 Developmental – those developing and maintaining software, who

‘understand the effects of change on the products of the development
process’.

2 Operational – the view of those operating systems and providing direct
service to customers, for whom ‘a legacy system is an operational
system that was written using hardware and/or software which is no
longer seen as part of the organisation’s current strategy’.

3 Organisational – concerned with how business processes (and IT
systems to support those) align with business strategy; under this
viewpoint legacy systems are those which no longer meet business
needs, although they may well contain vital information or processes.

30

Part 1 – IT systems maintenance and evolution

4 Strategic – concerned with ﬁnancial issues, which view legacy systems
as those where ‘the ﬁnancial beneﬁt they contribute to the organisation
is less than the cost of operating and maintaining them’.

(Alderson and Shah, 1999, pp. 115–116)

Ramage and Bennett (1998) examined the question of the maintainability of
software, which can roughly be seen as the opposite of a tendency to become
legacy software. They suggest that maintainability need not be seen as a
property of the software as a technical artefact, but of the wider system
surrounding the software. They suggest that the effective maintenance of an
IT system depends on a set of relationships being established and maintained.
Some of those involved in these relationships are people or groups of people;
others are more intangible, such as: managers, staff/users, business processes,
tacit knowledge, software technologies, software designers and software
maintainers. Maintainability requires the preservation of these relationships.
As Ramage and Bennett (1998, p. 276) argue, maintainability ‘is not just a
technological issue, but also concerns [organisational] politics, structure, etc.,
as appropriate to the relationships in the system being maintained’.

1.3.2 Solutions to legacy systems
Legacy systems have often been understood in purely technical terms and
technical solutions proposed in accordance with this way of thinking;
however, a growing awareness (in some quarters) of sociotechnical systems
thinking has led to a shift toward sociotechnical solutions to legacy system
problems. In what follows, we will ﬁrst examine technical solutions, and then
move on to look at some sociotechnical solutions.

Activity 1.7 (exploratory)

15 minutes
Before reading about solutions to legacy systems that have been offered by
others, have a think about what solutions might occur to you from your own
experience and from what you have read previously. Having done this, then
see what coincides or differs with your thoughts as you continue reading.

Technical solutions
Bennett, Ramage and Munro (1999) have identiﬁed six technical solutions
commonly in use with legacy systems, to which we can add a seventh:

31

Part 1 – IT systems maintenance and evolution

1 Discard them and build a new system from scratch.
2 Outsource them to a specialist organisation.
3 Freeze them (decide to carry out no further work).
4 Carry on maintaining them, despite difﬁculties.
5 Wrap them within more modern programs that provide additional

functionality (also known as encapsulation – see Box 1.4).

6 Reverse engineering – modelling the working of the current software and
modifying it, or building new software on a different platform which
exhibits the same functionality as the existing software.

7 Replatforming – shifting a legacy system from a locally-hosted platform
to a cloud platform, drawing on the cloud provider’s facilities in the
process (this may draw on some of the earlier solutions).

The more complex technical solutions in this list, especially the last three
solutions listed, are sometimes collectively termed software re-engineering.
Sneed (1995, p. 25) argues that this term properly refers only to‘ a one-to-
one transformation of business functions and data into different structures,
possibly with different languages and a different environment’, i.e. a
rewriting of the software code on a different platform but that will work in
the same way. Sneed also argues that a clear distinction must be drawn
between ‘technical’ and ‘functional’ software re-engineering – changing the
technology on which the software is built against changing the behaviour and
capabilities of the software. Sneed stresses that software re-engineering has to
be supported by a clear business case for the changes being made. He
discusses a method for business value and cost–beneﬁt analysis before
proceeding with software re-engineering projects.

Box 1.4: Encapsulation – the ultimate technical solution?

The technique of wrapping/encapsulation is worth discussing a little
further as it is widely used in a technical context. It is also frequently
described by software providers and IT consultants as if it were the sole
solution to legacy systems.

Encapsulation derives from the object-oriented model of software
design, where a computer program is built up as a set of objects, each
consisting of data and the processes which operate upon that data.
Objects can only interact with each other via an interface – the internal
workings of the object are irrelevant. The data and the processes are
described as being encapsulated in the object.

Taking this model, it is not hard to see that an object could be built
whose interface was in a modern programming language, but where the
complete internal workings of the object consisted of legacy code whose
behaviour was understood but which was difﬁcult to change – thus
wrapping the legacy system in the new interface.

This approach has much to merit it for legacy systems where an existing
piece of software performs a particular task perfectly well, but it needs

32

Part 1 – IT systems maintenance and evolution

to be extended in various ways (such as a database that needs to be
accessed via a web browser rather than a specialised terminal). It is
harder to use where there is a fundamental problem with the existing
software (as was the case with Y2K) but even then portions of the
software may be isolated and encapsulated in the same way.

Encapsulation may well be useful in many circumstances, though it is
not a universal solution to all problems.

Following the work of a large European research project called Renaissance,
which examined legacy systems evolution and re-engineering (Warren, 1998),
four main options for dealing with legacy systems were identiﬁed, which
parallel several of the above options:

1 Scrap the system completely.
2 Leave the system unchanged and continue with regular maintenance.
3 Reengineer the system to improve its maintainability.
4 Replace all or part of the system with a new system.

(Sommerville, 2016, p. 266)

The Renaissance method assesses two factors for the legacy system: its
business value (the importance of the legacy system to the continued
operation of the business) and its technical quality (the complexity, quality of
design, maintainability, etc. of the software and hardware). These factors can
be plotted on a two-dimensional graph, which in turn can be roughly
segmented as a two-by-two matrix (Figure 1.2).

y
t
i
l

a
u
q

l

i

a
c
n
h
c
e
T

High quality
Low value

High quality
High value

Low quality
Low value

Low quality
High value

Business value

Figure 1.2 Factors for the assessment of legacy systems (adapted from Ransom,
Sommerville and Warren, 1998)

33

Part 1 – IT systems maintenance and evolution

Activity 1.8 (exploratory)

15 minutes
What, in your view, would be the appropriate action to take for legacy
systems identiﬁed as being in each of the four quadrants (using the options
that Sommerville identiﬁes in the quote before Figure 1.2)? You will ﬁnd our
view in the activity answers.

These solutions have also been supplemented by a number of methods that
take a basically technical view – that is, they focus on the computer
technology as the main area of change within the IT system. Some examples
of this kind of approach include:

1 A ‘reverse requirements engineering approach’ (Alderson and Liu, 2000,
p. 203), to be used for reconstructing a set of requirements in a situation
where the software in use is available for examination but the original
requirements have been lost. This is done by examining the behaviour of
the software, and by working with current users of the software and other
stakeholders to understand the way the software works. Using techniques
of ‘semantic analysis [which] approaches the problem situation by
analysing business behaviours’ (ibid., p. 203), the study of existing use of
the software can elicit a set of requirements for the working of the current
legacy software. These requirements – which will not be identical to those
originally produced when the software was built – can be used as the
basis for a project of rebuilding the software with somewhat different
requirements on a new platform.

2 A ‘reuse re-engineering’ approach (Burd, Munro and Young, 2000, p. 209)

which examines in detail the structure of current software and the
relationship between its components, leading to the identiﬁcation of
components which can be extracted for reuse. The goal is to ‘deﬁne an
approach for the identiﬁcation, extraction and encapsulation of potential
reuse candidates from legacy systems’ (ibid., p. 209). When future
versions of the software are created, they can thus incorporate chunks of
program code from the existing software.

3 The use of design patterns (templates for effective design of software), an
approach taken from architecture, to examine typical problems in legacy
systems and thus typical solutions to those problems. This approach has
been followed in a number of research projects. Lauder and Kent (2000)
describe six ‘anti-patterns’ (typical examples of bad design) which are
frequently found in legacy systems, and positive patterns to counter each
anti-pattern. These patterns might be thought of as being like the ‘system
archetypes’ of Senge (1990), which provide a clear if somewhat abstracted
explanation of common problems together with suggested solutions.

34

Part 1 – IT systems maintenance and evolution

Sociotechnical solutions
While it will be clear that many of the drivers for the solutions discussed so
far are to do with business value, nonetheless the solutions themselves are
largely technical in their scope. In other approaches, the solutions considered
can be said to be sociotechnical, considering change to other parts of the
legacy IT system beyond the computer software. This kind of wider change
process is very natural given that the reasons for IT systems becoming
regarded as legacy are often to do with the way that software is embedded
within its organisational environment, as discussed above.

Thus it is possible to look for sociotechnical solutions to legacy systems.
Some of these will inevitably dovetail with other IT systems change
processes, discussed elsewhere in the module – for example the methods for
sociotechnical change in Block 2 Parts 1 and 2. However, some methods
speciﬁc to sociotechnical change in legacy systems have been developed, and
these are discussed in the paper you will read in the following activity.

Activity 1.9 (self-assessment)

1 hour 45 minutes

(a) Read Section 1, Section 2, Section 4 and Section 6.2 of ‘Four integration
patterns: a socio-technical approach to integration in IS development
projects’ by Bygstad, Nielsen and Munkvold (2010) which looks at four
different ways in which IT systems development can be integrated with
business processes and legacy systems from a sociotechnical systems
perspective. This article can be found via the module website in the
Block 3 Part 1 resources.

(b) Summarise what is meant by ‘sociotechnical integration’ and list the

advantages and disadvantages of each of the four different approaches to
integration presented in the article.

(c) If you work on IT systems and your organisation has a legacy system,

think about which of the four integration patterns appears most suitable
for purposes of effecting IT systems change with a low implementation
risk to the organisation. (If you don’t work on IT systems, or your
organisation does not have a legacy system, try to answer this question
with reference to an organisation you know about.)

(d) How does the sociotechnical approach compare to the various technical

approaches discussed earlier?

1.4 Trends in IT systems evolution over time
Given the various approaches to IT evolutionary dynamics explored in
Block 1 and earlier in this Part, two reasonable questions might be: What are
the trends that IT systems have followed? What are the broad themes that
emerge from their history? While it might be argued that answers to such
questions tend to shed more light on unplanned IT systems evolution, an

35

Part 1 – IT systems maintenance and evolution

examination of historical trends in IT systems change can also help inform
planned IT systems evolution, since conclusions drawn from an analysis of
such trends can be used to inform decision-making. Insofar as the foreseeable
future bears some resemblance to the immediate present (and relatively recent
past), it is possible to extrapolate trends, in the short term and within limited
contexts, so as to plan and direct the evolution of IT systems. For example, in
a review of IT systems evolution in the Norwegian context during the
previous 15 years, Davidsen and Krogstie (2010b) observe that:

More than 60% of ‘new’ systems to be developed are actually replacement
systems, constituting around 13% of the current application portfolio. Since
more complex infrastructures are supporting the information systems, more
and more of the resources are used for other tasks such as operations and
user support, less and less time is available for providing new information
systems support in organizations.

(Davidsen and Krogstie, 2010b, p. 300)

What might be inferred from this shift in terms of decision-making is the
need to adopt an evolutionary conception of the IT system, in which
continuous incremental adaptation is held to occur in an environment
characterised by the decreasing availability of resources that can be put into
supporting such adaptation.

Considering the whole history of computing, or of IT, goes beyond the scope
of what is relevant to this module. We will look at the main trends in this
process rather than the details of the history. Most of the discussion in this
section focuses on the use of IT within businesses speciﬁcally (that is, private
sector, commercial organisations) rather than other forms of organisation
(such as public or voluntary sector) – this is because the technologies we
discuss here were developed and deployed in these types of organisation.
While many of the trends discussed are applicable to other organisations,
some are less so.

The business use of IT goes back over 70 years. The ﬁrst recorded
computerised information system in business was LEO, the Lyons Electronic
Ofﬁce, which ﬁrst went live in 1951. (Note the importance of the word
‘computerised’ – information technologies and systems that are not
computerised have existed as long as human organisations have existed,
going back at least to the papyrus accounting records of ancient
Mesopotamia.) LEO was created by a business – J. Lyons & Co., a large
catering company that ran an extensive network of teashops through the UK
– to deal with its own needs. LEO introduced a principle to the business use
of IT systems that has long been signiﬁcant, if not always dominant – that
‘technology should be adapted to match the business, not that business should
be adapted to match the technology’ (Baskerville, 2003, p. 255). It is worth
noting, however, that while this principle is often stated, it is by no means
always followed in practice.

We will consider six main trends in information systems since LEO. Other
trends can, and have, been identiﬁed. This set has been selected because the
trends can broadly be seen to apply across most of the 70+ years since LEO

36

Part 1 – IT systems maintenance and evolution

went live, and because they summarise a number of other issues. Three of
these are shown in Figure 1.3 and have a fairly linear format. The others are
less less linear so are not displayed in the ﬁgure – these are concerned with
software development processes, outsourcing, and with client−supplier
relations.

Embeddedness in organisations

Specific functions

Core business

Application types

Holding data

Shaping the business

Developments in technology

Big and fixed

Small and portable

Figure 1.3 Some historical trends in IT systems evolution

1.4.1 Embeddedness in organisations: from support of
speciﬁc functions to organiser of the core business
Perhaps the most important trend is the way in which IT systems have
progressively become more embedded in the work and management of
organisations. A commonly used model of the history of IT systems is to
divide it into ﬁve ‘eras’ that each relate to the way that IT systems are
embedded within organisations, relating in each case to a key technology:

1 Data processing to improve operational efﬁciency by automating

information-based processes (1950s and 1960s).

2 Management information systems to increase management effectiveness

by satisfying their information requirements (1970s).

3 Strategic information systems to improve competitiveness by changing

the nature or conduct of business (1980s and 1990s).

4 Enterprise information systems to bring together all aspects of

organisational processes (2000s and early 2010s).

5 Cloud information systems, breaking the link between location and

technology (mid-2010s onwards).

(adapted from Ward and Grifﬁths, 1996; Laudon and Laudon, 2021)

The ﬁrst dates of these eras are highly debatable, and the shift from one to
another will have happened at different times in different places. It is thus
best to think of these eras as being overlaid on each other rather than
replacing each other, with the technologies of the earlier eras providing the
foundations of later eras. The term ‘era’ refers to the dominant perception of
IT systems in organisations.

Each era can be associated with a dominant form of technology:

37

Part 1 – IT systems maintenance and evolution

1 Data-processing (DP) systems are those concerned with large-scale and
rapid handling of large amounts of data. They typically take place on
mainframe computers, demanding the speed, reliability and predictability
long associated with that style of computing; the dominant application
type is the database. Early (and still important) examples of DP systems
were payroll and stock control; more recent examples include customer
billing by utility companies, and online banking. DP systems are very
well understood and unglamorous, but they still form the backbone of the
IT systems of many large organisations. The DP era brought rigour and
efﬁciency to many organisations; it was also characterised by a high
degree of thoroughness and control within the IT system development
process.

2 Management information systems (MIS) build upon DP systems to allow
for managers to make decisions in an informed way. Typical examples
include ﬁnancial modelling and planning for various areas of an
organisation. These tend to be less focused on mainframes and more on
PCs (and earlier on minicomputers). In an environment oriented towards
large-scale data processing, much of the data for MIS will come from the
DP systems, but it is also necessary for MIS data to come from a variety
of external sources. At the boundary between DP and MIS is the
collection and analysis of data speciﬁcally to help in management
decision-making – a common modern example is the collection of
customer data by retailers through loyalty cards and the subsequent data
mining to discover patterns of buying, leading to management’s ability to
make more nuanced decisions about products, pricing and special offers,
store layouts, targeted marketing, etc. As with the DP era, the MIS era has
not gone away, and management information systems are still a vital part
of many organisations.

3 Strategic information systems (SIS) are built around the concept that IT

systems can form a strategic basis for an organisation, leading to
signiﬁcant competitive advantage and acting to transform it. This reﬂects
the shift from the early 1980s onwards from IT systems being seen as a
support mechanism (albeit an increasingly powerful one) to them being
seen as central to the survival and advancement of a business. A series of
early successful examples – a particularly celebrated case was American
Airlines’ Sabre reservation system – led to a large number of books and
journal articles, which fed through to business school teaching and to
wide-scale practice associated with IT systems thinking. The concept that
IT systems should be seen as strategically core to a business is in many
ways taken for granted in modern organisations – yet it is easy to forget
that it was once highly radical and is still unrealised in practice within
many organisations.

4 Enterprise information systems extend the concept of strategic information

systems, to establish an information system at the heart of an
organisation’s processes. Many organisations in this era adopted enterprise
resource planning tools such as those produced by SAP, which combine
and integrate functions such as accounting, human resources, customer
relationship management, sales and procurement into a single system. The
implementation of such tools can be complex and risky, but, when it

38

Part 1 – IT systems maintenance and evolution

works, transformational for an organisation. This era also showed the full
embedding of the internet into large business organisations, enabling many
to ‘move toward networked organizations’ (Hirchschheim and Klein 2012,
p. 214).

5 Cloud information systems are based around the idea of individual

organisations outsourcing their information systems storage and processing
from local computers to those held by central providers, such as Amazon
Web Services or Microsoft Azure. Cloud computing has been deﬁned as
‘a model for enabling ubiquitous, convenient, on-demand network access
to a shared pool of conﬁgurable computing resources (e.g., networks,
servers, storage, applications, and services) that can be rapidly provisioned
and released with minimal management effort or service provider
interaction’ (Mell and Grance, 2011, p. 2). However, the impact of the
cloud goes far beyond a purely technical consideration – it completely
changes the relationship of the organisation with its technology and
especially its mobile use.

Activity 1.10 (exploratory)

20 minutes
What are your experiences of these ﬁve eras? Have you seen each one in
use? What do you think could come next? Share your ideas to the Module
discussion forum.

1.4.2 Application types: from holding data to shaping the
business
While the ﬁrst trend, embeddedness, relates to the way that businesses use
their IT systems, there is a related trend in the development of different types
of application software. Early applications were designed to support existing
business functions by storing and processing data, but they have
progressively become more focused on ways to organise and order the
business and its processes. We will examine four broad classes of application
software (although there are others not considered here, particularly ﬁnancial
management and decision-support systems):

. Databases are perhaps the basic form of software in a mainframe

environment, and form the basis of the DP era discussed above. The use
of databases underlies most data-processing applications, and they can be
seen in practical use as early as the tea shop job on the LEO computer
discussed in the introduction to section 1.4. The purpose of databases is
familiar – to store large amounts of data in ways that can easily be
retrieved. Database management systems take various forms, largely
around the different ways that data is structured. While the dominant form
of databases since the late 1970s has been the relational database with its
data query language SQL, several other forms exist and continue to be
widely used.

39

Part 1 – IT systems maintenance and evolution

. Ofﬁce software is a catch-all term for the applications that support day-to-
day operations within ofﬁces – especially word processors, spreadsheets,
presentation tools and perhaps software for designing web pages. Their
development closely parallels that of microcomputers – indeed, certain
microcomputers became popular largely because they would run new
forms of ofﬁce software such as spreadsheets – and it is noticeable that
the dominant software provider for microcomputers, Microsoft, produces
both ofﬁce software and operating systems software. In the early days of
ofﬁce software, it was associated with the concept of ‘ofﬁce automation’
– the idea that the basic tasks of ofﬁces (such as letter writing and
accounts) could be automated, rather than being carried out by secretaries.
This term is largely unused today, but the rise of the word processor in
particular changed the face of many ofﬁces; and it remains the case that
automation of basic tasks is an ongoing preoccupation of ofﬁce software
manufacturers.

. Collaborative software (or groupware) is concerned with support for

cooperative working between staff within organisations, using tools such
as shared information resources, shared calendars, intranets, conferencing
systems and collaborative writing tools. The classic examples include
Lotus Notes, Microsoft Outlook, and the extensive collaborative elements
available through modern ofﬁce software. Online communication tools
such as Microsoft Teams, Zoom and Adobe Connect also draw together
many of these elements. While many such technologies are mainly
concerned with the everyday working of businesses, one class of
groupware, workﬂow systems, is intended to support the modelling and
enforcement of business process rules.

. Enterprise Resource Planning (ERP) software (which we also saw in the
previous section) is very clearly to do with the reshaping of business by
IT systems. It integrates the management and planning of most of the
functions and processes of a business organisation (including tasks such
as manufacturing, logistics, distribution, accounting, sales and billing) into
a single information system. ERP systems have become extremely
important in the IS portfolios of many organisations, especially those
building and selling products of all sorts, as opposed to services. While
ERP is concerned largely with the aspects of a business that are not
customer facing, by contrast the equally inﬂuential Customer Relationship
Management (CRM) systems focus on tracking and supporting all of an
organisation’s contacts with its customers, whoever is making the
contacts. Both these forms of application require considerable change to a
business’s processes to work effectively with them, but both sit right at
the heart of that business’s activities and are clearly strategic information
systems.

1.4.3 Developments in technology: from big and ﬁxed to
small and portable
The next trend we will consider is the way that IT has changed since
the 1950s. There are two separate but related issues here – computer
hardware (and its operating systems software) and networking. Care needs to

40

Part 1 – IT systems maintenance and evolution

be taken, in focusing on technology as a driving trend, to avoid technological
determinism: suggesting that technology on its own drives business and social
trends. While it is undoubtedly the case that changes in technology have an
impact upon social and business changes, they do not solely determine those
changes. For example, the widespread use of mobile phones has undoubtedly
made for greater ﬂexibility in communication – but the take-up of the mobile
phones partly depended upon changes in society around greater mobility.
Even more than with the other trends, this brief account of the history of
computer hardware is only a summary – the full story is widely available
elsewhere (e.g. Ceruzzi, 1998).

The basic trend in computer hardware has always been towards the smaller
and more powerful. When digital computers with stored programs and data
were ﬁrst invented in the late 1940s, they ﬁlled a room but had very little
power or memory by today’s standards. These early computers –
developments of earlier electronic calculators used in the military and
business – developed rapidly during the Second World War. Nonetheless, the
introduction of this new kind of automated computer was to lead to very
rapid change and use in business. As the market grew, the power of the
machines grew, as did the number of manufacturers. IBM, who were already
extremely successful in making large calculating machines, made their ﬁrst
electronic computer in 1952.

Through the 1950s and 1960s, the power and capacity of computers grew as
their uses in a wide range of businesses and government settings expanded.
The dominant manufacturer through those decades was IBM, who continued
to sell large and increasingly powerful machines – by the late 1950s their
market share was about 70%, and similar levels were to continue well into
the 1970s, usually under the term ‘mainframe’. Mainframes still exist today
and are valuable in large organisations for their power and reliability – they
can handle very large data sets and crash much less often than smaller
computers – but they are still complex and expensive.

In the same year that IBM introduced the System/360, the Digital Equipment
Corporation (DEC) introduced the PDP-8, a machine that (with its
successors) would become known as a ‘minicomputer’. These machines were
smaller and cheaper than mainframes – they were the size of a ﬁling cabinet
rather than a room – which made them suitable for a much wider range of
customers. As Ceruzzi (1998) comments, they ﬁtted with the times in their
use of the term ‘mini’ (the Mini car and the miniskirt were also highly
fashionable); and in being smaller and cheaper than IBM and its competitors,
they were perceived as being anti-establishment, which also ﬁtted with the
times. The minicomputer did not supplant the mainframe, but it took
computing into areas where it had previously been little used, and it became
popular as a computing research too. It was on DEC machines that the Unix
operating system was ﬁrst written.

The invention of the microprocessor in the early 1970s enabled another
generation of smaller computers – microcomputers. While there were several
popular small microcomputers, in the business world the three key
microcomputers were the Apple II (1977), the IBM PC (1981) and the Apple
Macintosh (1984). These brought computing to a whole range of small

41

Part 1 – IT systems maintenance and evolution

businesses for which it had previously been too expensive. The ﬁrst was
vastly popular for having the ﬁrst spreadsheet software, VisiCalc; the second
set the standards for most subsequent PCs (especially via its operating system
software, MS-DOS and its successor, Microsoft Windows); and the third
introduced to the popular market many of the user interface features now
ubiquitous on PCs and laptops. Although PCs and laptops have become
widespread, they are now being supplemented in many situations by
smartphones and tablets.

As well as size, the other aspect of this trend is portability. Clearly they are
related – modern laptops are so portable because they are able to use small
and light components (yet still be powerful computers). The other main
feature of portability is the ability to network computers together, and thus
make connections between people and their work. On a mainframe computer
(or a powerful minicomputer) where multiple users are connected to the same
machine, it is natural for those users to want to communicate with each other
– to send messages and to share ﬁles. The internet arose progressively from
the early 1970s onwards as a way to allow users of different computers
(especially minicomputers running Unix) to communicate in these ways.
From a small network of academic and military users in the USA, it rose
through the 1970s and 1980s to cover most universities, and then increasing
numbers of businesses – readying it for the sudden explosion of use through
the world wide web in the mid-1990s (Naughton, 1999).

PCs, likewise, became progressively more connected to each other during the
1980s, with the creation of Local Area Networks (LANs) such as Ethernet;
and LANs, in turn, served as the basic connection points to the internet for
PCs within most companies. Today, small and powerful computers such as
laptops and tablets, often combined with mobile phone technology or wireless
networking, allow computers to be taken anywhere and still have full access
to an organisation’s IT infrastructure. This trend towards portability, and
towards shrinking in size, is likely to continue.

A part of this trend which brings many of these aspects together is cloud
computing which involves making use of high-bandwidth networking and
remotely connected computers to process and store data and run applications.
Examples of cloud services include Google Drive, Microsoft OneDrive and
Amazon Web Services, all of which enable online storage and processing,
allowing for the use of very signiﬁcant processing power, including tools
such as machine learning, accessed through relatively low-powered devices.
As we have seen in relation to the ﬁrst trend, cloud computing enables huge
changes to occur within organisations.

Activity 1.11 (exploratory)

10 minutes
Given that this trend is fairly technological, how do you see it relating to the
ﬁrst trend on embeddedness in organisations? Do more portable computers
become more or less embedded in organisations?

42

Part 1 – IT systems maintenance and evolution

1.4.4 Software development processes: from bespoke to off-
the-shelf (and back)
The next trend we will consider is the process of software development,
which, in turn, impacts upon the way in which IT systems evolve. In many
ways this less resembles a unidirectional trend than a circular one: the
constant interplay between in-house and bought-in software. This trend is
important because it illustrates another aspect of the relationship between
businesses and their IT systems. It especially concerns the question of where
the power to make decisions over IT system evolution is located – with the
strategic decision makers, with internal IT departments, with individual users
or departments, or with suppliers of third-party computer software?

In the early days of business information systems, all signiﬁcant applications
were written for a particular business by its own staff or consultants. Over
time, a set of common applications developed that could be sold to many
customers, either as part of a computer package or by a third-party developer.
As these packages have become progressively more customisable, tailored
versions have become common; but likewise so has the use of licensed online
versions of software packages, known as software as a service (SaaS). This
process can be seen in Figure 1.4.

Bespoke

Off the shelf

Tailoring

Figure 1.4 Cyclical version of trends in IT system development processes

We can see two major forms of software development:

. Bespoke: The term derives from the world of clothes making, and refers

to all forms of manufacture that have been speciﬁed by a customer to suit
their needs. In software terms, it refers to development being carried out
either by an IT department within the organisation, or by external
consultants working to the speciﬁcation of the organisation. The vast
majority of software development happened this way in the past, with
only the most basic software – that which sat within the operating system,
software for programmers such as compilers, and underlying technologies
such as database management systems – being standardised across
organisations. Bespoke development has the advantage of providing
exactly what the organisation requires (as long as it knows), or can ﬁnd
out about its needs through a process of requirements analysis. However,
for a common set of tasks it may well be more expensive, slower and
produce poorer results than a well-written pre-made piece of software.

43

Part 1 – IT systems maintenance and evolution

. Off the shelf: Buying software ready-made is the opposite of having it
made to order, and is often referred to as ‘commercial off-the-shelf’
(COTS). For many standard tasks, COTS is the obvious way to buy
software – hardly any organisation would now write its own word
processor or email program. The term COTS originally referred to the
purchase of software, but the same idea has occurred more recently in the
advent of software as a service (SaaS) – the leasing of software through
annual subscriptions. With SaaS, new versions of the software are
released when convenient for the manufacturer, and do not require the
purchase of a new product; the software might sit on local PCs or on a
cloud server.
A variant on bespoke development which relies on COTS is known as
tailoring: taking a ready-made product and modifying it so that itﬁ ts the
exact needs of the customer organisation. To some extent, this has long
been part of the process of creating software – some bespoke development
has always built upon existing applications, and all programming
languages contain some sort of library of components that can be included
to perform well-deﬁned tasks. Tailoring has grown in importance due both
to the rise of COTS software but also the prominence of open source
software, where the underlying source code can be modiﬁed, allowing for
a greater amount of customisation than is typically possible with a
commercial package.

Irrespective of whether software development – and IT systems development
more broadly – tends to follow a bespoke, COTS or tailoring trend in the
future, there is a need to take seriously the issue of power relations in
planned IT systems evolution.

In the ﬁrst two blocks, you looked at various issues to do with power in the
context of IT systems, including differential power relations between
stakeholders within an organisation. Consideration of power issues becomes
especially important where planned evolution involves the role of third
parties, since there are power relations at work between organisations and
suppliers of technology, both software and hardware. However, before taking
a brief look at power issues involving suppliers, we need to look at a related
phenomenon – outsourcing.

1.4.5 Outsourcing, offshoring and beyond
In a business context, outsourcing refers to contracting out a business unit or
process to a third party; in an IT systems context, this might take the form of
making an external organisation responsible for supplying IT products used
by the business, providing IT services within the business or designing the
organisational business process itself. Insourcing refers to the reverse
phenomenon – that is, bringing business processes previously handled by
third parties into the organisation itself. By contrast, offshoring refers to
getting work done in a different country, usually to leverage cost advantages.
It is important to appreciate that it is possible to outsource work, but not
offshore it; similarly, it is also possible to offshore work, but not outsource it.

44

Part 1 – IT systems maintenance and evolution

Since the beginning of the twenty-ﬁrst century, offshore outsourcing – that is,
getting work done by an external organisation in another country – has
become increasingly common.

Activity 1.12 (self-assessment)

10 minutes
Given the above deﬁnitions, state whether the following are examples of
outsourcing, offshoring or offshore outsourcing:

(a) A company subcontracting a business process to a different company in

the same country.

(b) A company subcontracting a business unit to a different company in a

different country.

(c) A company subcontracting a business process to the same company in

another country.

(d) A company moving an internal business unit from one country to another.

The continued proliferation of ICTs has made it possible for businesses based
in the UK and other industrialised nations to use outsourcing as a way of
building viable service delivery businesses that can be run from virtually
anywhere in the world – and in the case of offshore outsourcing, at reduced
costs due to lower contract rates in countries such as India and China as
compared with the UK, Europe, Japan and the USA. In addition to reducing
costs, offshore outsourcing is also driven by a concern to take advantage of
vendor expertise, economies of scale, and large and scalable labour pools
including technical personnel. Examples of offshore outsourced IT system
services include call centres for telemarketing, provision of technical support
for ISPs and customer service for utility providers such as gas and electricity,
medical note transcription, payroll and tax return processing services, and
radiological analysis. Offshore outsourcing in IT systems also extends to
production – speciﬁcally, software research and development and hardware
(component, device) manufacture. It is important to appreciate, however, that
any reduction in operating costs and increase in proﬁtability of an
organisation needs to be offset against concerns about reduced quality in
terms of end user experience due to factors such as language and cultural
differences; negative attitudes in the UK toward call centres based in India
providing perhaps the most conspicuous example of such perceived loss of
quality. Another concern relates to security threats and the possibility of
fraud. For example, the large consumer credit ﬁrm Equifax had a serious data
breach in 2017 which allowed hackers to access the data of 13.8 million UK
consumers, which was subsequently found by the ﬁnancial watchdog to be
‘because Equifax outsourced data to Equifax Inc’s servers in the US for
processing’ (Financial Conduct Authority, 2023). Of course, fraudulent and
insecure activity also takes place inshore – that is, within the host country of
a business.

45

Part 1 – IT systems maintenance and evolution

Despite such concerns, outsourcing, whether offshore or inshore, continues to
be viewed positively since it may offer a number of advantages to an
organisation, including:

.

.

.

.

access to resources unavailable within the organisation and/or host
country
access to qualiﬁed personnel outside the organisation and/or abroad,
potentially leading to a reduced need to hire and train specialised staff
within the organisation
increased speed to market, given a greater ability of already trained staff
reduced operating costs and increased proﬁtability.

However, outsourcing also necessitates consideration of power issues which
become more pronounced when the outsourcing takes place offshore. One
implication of outsourcing is that greater physical distance between higher
management and production ﬂoor employees often requires a change in
management methodologies, since inspection and feedback may not be as
direct and frequent as is the case for processes within the organisation. By
contrast, insourcing provides a means by which to ensure control over
business processes and compliance with business objectives. In addition,
outsourcing poses problems for development since more formal, contractual
relationships between client and supplier increases the distance between
developers and users, which makes it harder to reﬂect users’ needs in the
ﬁnal product. This problem is exacerbated if such development takes place
offshore.

1.4.6 Clients, suppliers and power issues
It is crucial to appreciate that outsourcing involves a transfer of value – and
power – ‘downstream’ from the organisation (or client) to the supplier;
therefore it is important to identify suitable suppliers and build strong
relationships with them.

A general principle when selecting suppliers is to choose them based on
capabilities and not purely on a competitive basis; hence, the need to analyse
and evaluate suppliers in terms of process (production or service-based) and
performance – that is, in terms of expectations and measurement of
outcomes. Evaluation criteria include:

.

.

.

.

commitment to quality
competitive pricing
communication (openness)
timely service

. ﬂexibility (in adjusting to the client’s needs)

.

knowledge of market

. ﬁnancial stability

.

location (of the supplier relative to that of the client).

46

Part 1 – IT systems maintenance and evolution

Suppliers can be differentiated into three types, in terms of their importance
to the client:

1 Strategic – supply the client with essential products, services and/or

capabilities.

2 Preferred – important, but alternatives can be found.
3 Transactional – readily replaced.

Crucially, relationships with strategic suppliers need to be closely managed
and power relations involving them need to be identiﬁed. Supply chain
management refers to setting up distribution channels across organisations so
that all the members of the channel, from suppliers to clients, coordinate their
business activities and processes to minimise their total costs and maximise
their effectiveness in the marketplace. However, it is important to appreciate
that supply chain relationships can range from counterproductive (both
supplier and client lose), to competitive, to cooperative (both win), to
collaborative, with varying levels of trust and control exercised by both
parties. Both clients and suppliers stand in dependency relations with each
other:

.

.

clients depend on suppliers for continued, reliable use of hardware,
software or services, and they also seek high quality, on-time delivery and
transparency about costs
suppliers depend on clients for continued payment and for continued
sensible use of their products or services, quick notiﬁcation of problems
and reasonable cooperation in solving problems.

Finally, there is some debate over whether to use single or multiple suppliers:

.

.

from a client perspective, having access to multiple suppliers would seem
to drive costs down through competition and reduce dependency
bottlenecks through assured supply
from a supplier perspective, a single supplier lends itself to certainty of a
long-term contract which ultimately leads to lower client costs and,
importantly, ﬂexibility in accommodating client needs due to the closer
nature of the relationship.

On this basis, another principle appears to be: reduce the supplier base, but
perhaps not to a single supplier.

Having looked at outsourcing and client–supplier power issues, we will end
this section with an activity designed to explore these topics in more detail.

Activity 1.13 (self-assessment)

2 hours 45 minutes
In this activity, you will read extracts from two articles exploring outsourcing
and client–supplier power issues – the ﬁrst examining inshore outsourcing in
a European context from a client perspective, and the second looking at
offshore outsourcing in a Far Eastern context from a supplier (or vendor)
perspective.

47

Part 1 – IT systems maintenance and evolution

Because the articles are long ones, we have asked you only to read parts of
each article. Both articles can be found on the module website in the Block 3
Part 1 resources.

When reading the extracts from each article, make notes on the following:

.

.

.

.

the nature of the supply chain relationship between client and supplier
(e.g. competitive, cooperative)
the nature of the power relationship between client and supplier
factors inﬂuencing trust and control between client and supplier
cultural differences (if any) between client and supplier and the
generalisability of ﬁndings to different outsourcing contexts.

Now read Sections 1, 4, 5 and 6 of ‘Control, trust, power, and the dynamics
of information system outsourcing relationships: A process study of
contractual software development’ by Heiskanen, Newman and Eklin (2008).

Next, read Sections 1, 2, 5 and 6 of ‘Vendors’ perspectives on trust and
control in offshore information systems outsourcing’ by Mao, Lee and
Deng (2008).

Summarise the similarities and the differences in the approaches presented in
the two articles in terms of the issues referred to in the above list.

1.5 Summary
In this Part you looked at how to maintain the success of an IT system,
beginning with a brief review of some of the limitations of the systems
development life cycle approach and the need to adopt an evolutionary
approach to IT systems change. You then went on to look at the difference
between system maintenance and system evolution, as well as that between
planned and unplanned IT systems evolution, and a model of planned
evolution was presented. Next, the relationship between software evolution
and IT systems evolution was brieﬂy examined. The relationship between
system maintenance, system evolution and software evolution in the context
of legacy systems was then examined, along with the difference between
technical and sociotechnical solutions to legacy system problems. Finally, you
looked at some of the historical trends in the evolution of IT systems,
including the role of COTS, outsourcing and suppliers, in connection with
how an analysis of such trends might be used to inform decision-making and
planned IT systems evolution.

In the next Part, you will look at some techniques for predicting future trends
and maintaining the viability of IT systems.

48

Part 1 – IT systems maintenance and evolution

Answers to activities
Please note that some activities do not have answers in this section if they
are open-ended, simply give instructions for reading or media use, or if a
comment is given in the text.

Activity 1.1
Avison and Fitzgerald list the following:

1 Feasibility study – ‘looks at the present system, the requirements that it
was intended to meet, problems in meeting those requirements, new
requirements that have come to light since it was ﬁrst implemented, and
brieﬂy investigates alternative solutions’.

2 System investigation – ‘a more detailed fact-ﬁnding phase [which]
purports to be a thorough investigation of the application area’.

3 System analysis – ‘an attempt to understand all aspects of the current
system and why it developed as it did, and eventually indicate how
things might be improved by any new system’.

4 System design – ‘the new design might be similar to the previous

system, but avoiding the problems that occurred with the old system and
without including any new ones’.

5 Implementation – ‘if the design includes computer programs, they have
to be written and tested; new hardware and software systems need to be
purchased and installed if they are not available in the organisation at
present’.

6 Review and maintenance – ‘once the system is operational, [t]here are

bound to be some changes necessary and some staff will be set aside for
maintenance, which aims to ensure the continued efﬁcient running of the
system’.

(Avison and Fitzgerald, 2003, extracts from pp. 27–31)

Activity 1.2
There is a large academic ﬁeld studying decision-making processes in
organisations, of which the basic conclusion is that people don’t behave as
rationally as they like to think they do (or like others to think they do).
Decisions are taken for many different reasons, including power, status and
emotion. Of course, decision-makers often present a rational face on their
decisions, following set processes, and very often believe quite genuinely that
they are rational, but frequently there are many other factors involved.

If this is so for organisational decision-making in general, it is surely also
true for IT decision making. Although many IT systems planning processes
follow systematic methodologies, of the kind you learnt about in Block 2 Part
2, these methodologies are frequently imperfect and non-rational
considerations often apply.

None of this is a criticism of organisations or individuals planning IT systems
– it is merely an observation that things are more complex than cut-and-dried
models make them look. (And yes, this applies to models in this module!)

49

Part 1 – IT systems maintenance and evolution

Of course, your experience of IT systems planning may be different, so feel
free to disagree.

Activity 1.3
Keith Bennett clearly endorses the IEEE deﬁnition of software maintenance,
formulated in 1991: ‘software maintenance is the process of modifying the
software system or component after delivery to correct faults, improve
performance or other attributes, or adapt to a change in environment’ (quoted
on p. 674 of Bennett’s article). By contrast, he says that software evolution
‘is concerned with modifying software once it is delivered to a customer’ (p.
673) and argues that ‘business change is represented by evolutionary change
to the software, and not revolutionary change, and that most so-called
development is actually enhancement and evolution’ (p. 675).

If you work with software, we hope you found it interesting to explore the
maintenance issues around that software, and to think in terms of the four
types of maintenance. We can think of few organisations that aren’t
maintaining some kind of software, paying others to do it, or at least
regularly installing updates to applications and operating systems.

One comment to make about Bennett’s article. It is over 25 years old (as of
autumn 2023); by the time you read this, it may well be rather older. The
‘future’ to which Bennett refers is now the present, or the past. Nonetheless,
the issues involved remain the same, and software maintenance and evolution
has remained just as important, if not more so.

Activity 1.4
We will not try to summarise Lehman’s laws beyond those in the text. If you
search online or via the OU Library Services, you will ﬁnd several other
summaries of these laws.

Applying at least some of the laws to an IT system you know is an
interesting exercise. The 1st Law (of continuing change) will be familiar to
anyone who knows IT systems. Because the organisational and technological
environments are constantly changing, the software must change, or become
progressively irrelevant – this is the essence of legacy systems.

Manny Lehman was clear, in his later work, that the 8th Law was the most
important – that feedback is a crucial element in the evolution of software
systems (and by extension, of IT systems). You met this concept early in this
module – all systems change through complex feedback loops of one part
impacting upon another part.

Activity 1.5
Ultimately the difference in the two approaches, for me, is one of engineering
against science. Bennett’s purpose (engineering) is to discuss a set of
practical techniques that can be rapidly applied to the evolution of software
by those writing and managing it. Lehman’s purpose (science) is to
understand a set of complex phenomena, to map them out clearly and to
allow predictions to be drawn for future occasions of similar phenomena. Of

50

Part 1 – IT systems maintenance and evolution

course this is a caricature – Bennett’s approach has a body of theory in it,
and Lehman’s approach is quite applicable to practice – but we feel it
expresses a basic difference between their work. Whether the authors would
agree with our characterisation is quite another matter! Related to this
difference is the one we identiﬁed at the start of the subsection entitled
‘Dynamics of software evolution’ – that Bennett’s work is concerned with
deliberate and planned approaches to software evolution, while Lehman’s
work is concerned with emergent and unplanned approaches. In this, the
distinction resembles that between planned and unplanned evolution in this
module. There are also considerable similarities between the two approaches
– both are based in computer science, both focus on software, and both are
concerned with evolution rather than initial development of that software.
The approaches are very much parallel ways of looking at the same set of
issues.

Activity 1.6
This activity is one to reﬂect upon if you work with IT systems or know
about them. Do the problems of Travelex seem familiar to you? You might
think that your organisation only has brand-new IT systems so that legacy is
not an issue, but almost all organisations have old IT systems, still in
operation, of one sort or another. Even the newest IT systems can take on
legacy aspects, remarkably quickly.

Activity 1.7
(No answer for this activity as it should be based on your own experience if
available.)

Activity 1.8
Sommerville (2016) interprets the recommended activities associated with the
four quadrants of the graph as follows:

51

Part 1 – IT systems maintenance and evolution

1 Low quality, low business value: this software is difﬁcult to maintain and
not contributing signiﬁcantly to the core business. It may well be best to
consider scrapping this software completely, to continue maintaining it at
a low level, or perhaps to replace it with commercial software that has
some of the same functionality.

2 Low quality, high business value: this software is a good candidate for

some sort of transformation, such as the software re-engineering options
discussed earlier. Its low technical quality means that problems will arise
if this is not done, while its importance to the business means it must be
retained in some form.

3 High quality, low business value: because of its high quality, little needs

doing to this software – the best option is probably to continue
maintaining it. However, its low value to the business also makes it a
possibility for scrapping if appropriate.

4 High quality, high business value: it is likely that this software will need
to continue to be maintained in its current form, and that its technical
quality makes this a sensible option.

Activity 1.9
Here are our answers (yours may be different, and please have a go before
you read these):

(b) The article has two deﬁnitions of sociotechnical integration. In

section 2.1 (p. 55) it says that it must be build both on social integration,
which it deﬁnes as ‘a reciprocity of practices between actors’ and
technical integration, which it deﬁnes as ‘the assembly of different
technical artefacts, such as components and systems’. By contrast in
section 4 on integration patterns, the article says that ‘integration of both
stakeholders and technology is done stepwise’ (p. 64).
Advantages and disadvantages of the four integration patterns:
◦ Big bang: advantage is ‘high degree of internal project control as

◦

well as software system integrity’; disadvantages are ‘late
integration runs the risk of both user resistance and of technical
integration problems’, ‘organization and the infrastructure are
subject to change’, ‘user and technical requirements may be
incomplete or inadequate at the start of production’.
Stakeholder integration: advantages are that ‘Early user
participation has long been established as an important success
factor’ and that ‘it secures more reliable requirements and early
user validation of the product’; disadvantage is that ‘it increases
the complexity of the project […] the project manager also has
to spend time and effort negotiating with external stakeholders’.

◦ Technical integration: advantages are that ‘early and stepwise
technical integration secures technical stability at the time
production starts’ and that ‘it may also validate the technical
quality of the software system’; disadvantages include ‘the aspect
that early technical integration increases the complexity of the
development process’, that ‘testing environments must include

52

Part 1 – IT systems maintenance and evolution

◦

more of the production technology’ and that ‘the logistics of the
project becomes more complex’.
Socio-technical integration: advantages are that it has ‘potential
to support organizational innovation’ and that it ‘may broaden
the applicability of the technology’; disadvantages are that it
‘includes huge challenges for project control’ and that it
‘increases the complexity of the development process, making it
less predictable’.

(c) In our view, each of the four integration patterns have value in different

organisations with different IT systems.

(d) The sociotechnical approach described in the article is especially

interesting in the way it stresses a ‘dynamic coupling’ between IS
(information systems, i.e. IT systems) development and the business
organisation – i.e. both the IS and the organisation change together and
both inﬂuence each other. The key difference from the technical
approaches is that, while those may be informed by organisational needs,
only the technology changes – the organisation essentially remains the
same. The technical approach is one-way; the sociotechnical approach is
two-way.

Activity 1.10
It is hard to spot broad patterns of changing behaviour of IT systems use
within organisations whilst they are in their early stages – it is for this reason
that typologies such as those by Ward and Grifﬁths (1996) and Laudon and
Laudon (2021) are useful. Many consultants and semi-popular works of IT
would certainly present key factors as being central to future trends. At time
of writing the current version of this answer (autumn 2023), there is much
talk about machine learning, and artiﬁcial intelligence more generally as key
technologies. Their use within organisations might form the basis of a future
era – but it may also be incorporated in other trends and/or superseded by
something completely different.

Activity 1.11
In our view, there is a close interweaving between the embeddedness of IT
within organisations and the changes in technology. The fact that IT has
become smaller and more powerful has made it cheaper and more universal,
and has made it more available beyond technically skilled users. However,
the attractiveness of successive generations of technology – especially shifts
such as the rise of minicomputers, PCs and the internet – is partly due to the
changing understanding of the role of IT. Rather like the double helix that is
the basis of the structure of DNA, the developments in technology and in the
understanding of IT within organisations are necessarily and always
intertwined.

Activity 1.12

53

Part 1 – IT systems maintenance and evolution

(a) A company subcontracting a business process to a different company in

the same country would be outsourcing, but not offshoring.

(b) A company subcontracting a business unit to a different company in a

different country would be offshore outsourcing.

(c) A company subcontracting a business process to the same company in

another country would be offshoring, but not outsourcing.

(d) A company moving an internal business unit from one country to another

would be offshoring, but not outsourcing.

Activity 1.13
Here are our answers (yours may be different, and again please have a go
before you read these):

.

Supply chain: these words do not appear in either article, but we can infer
their approaches from other parts. Heiskanen, Newman and Eklin describe
a process that is strongly based on contract, with aspects both of control
by the client and of what they term equivocation. Mao, Lee and Deng also
talk about the importance of contracts, but are clearer that trust and
relationships are crucial.

. Power: Heiskanen, Newman and Eklin emphasise bargaining power both

in setting contracts and later in the process. Mao, Lee and Deng observe a
signiﬁcant asymmetry in power between the client and supplier, in favour
of the former.

. Trust and control: These are central issues to both articles, and discussed

throughout, although they are treated differently in the two articles.
. Cultural differences: Mao, Lee and Deng emphasise the important of

understanding and blending cultural differences, and look at the rather
different approaches found in Japan and China. Heiskanen, Newman and
Eklin’s case study wholly takes place within Finland, which is a fairly
homogeneous culture; they make no mention of cultural difference. Do
you think this shows up in the analysis they make?

54

Part 1 – IT systems maintenance and evolution

References
Alderson, A. and Liu, K. (2000) ‘Reverse requirements engineering: the AMBOLS
approach’ in P. Henderson (ed.) Systems engineering for business process change:
collected papers from the EPSRC research programme. London: Springer,
pp. 196–207.

Alderson, A. and Shah, H. (1999) ‘Technical opinion: viewpoints on legacy systems’,
Communications of the ACM, 42(3), pp. 115–116.
Allen, T. (2023), ‘Cloud currency: Travelex leaves legacy behind’, Computing. 9
March. Available at: https://www.computing.co.uk/interview/4077150/cloud-currency-
travelex-leaves-legacy (Accessed: 4 March 2024).

Annett, R. (2019) Working with legacy systems: a practical guide to looking after
and maintaining the systems we inherit. Birmingham: Packt Publishing.

Avison, D.E. and Fitzgerald, G. (2003) Information systems development:
methodologies, techniques and tools. 3rd edn. London: McGraw-Hill.
Babcock, C. (2015) ‘VMware value lies in modern data center management’,
Information Week, 13 October. Available at: https://www.informationweek.com/
software-services/vmware-value-lies-in-modern-data-center-management (Accessed: 8
November 2023).

Baskerville, R. (2003) ‘The LEO principle: perspectives on 50 years of business
computing’, Journal of Strategic Information Systems, 12(4), pp. 255–263.
Bennett, K.H. (1996) ‘Software evolution: past, present and future’, Information and
Software Technology, 38(11), pp. 673–680.

Bennett, K.H., Ramage, M. and Munro, M. (1999) ‘Decision model for legacy
systems’, IEE Proceedings–Software, vol. 146, no. 3, pp. 153–159.

Bennett, K. H. and Rajlich, V. T. (2000) ‘Software maintenance and evolution: a
roadmap’, in A. Finkelstein (ed.) The future of software engineering. New York:
ACM Press, pp. 73–87.
Boehm, B. (1988) ‘A spiral model of software development and enhancement’, IEEE
Computer, 21(5), pp. 61–72.

Burch, J.G. and Grupe, F.H. (1993) ‘Improved software maintenance management: a
systems approach is beneﬁcial’, Information Systems Management, 10(1), pp. 24–32.
Burd, E., Munro, M. and Young, P. (2000) ‘Reconstruction of legacy systems for
evolutionary change’, in P. Henderson (ed.) Systems engineering for business process
change: collected papers from the EPSRC Research Programme. London: Springer,
pp. 209–221.

Bygstad, B., Nielsen, P.A. and Munkvold, B.E. (2010) ‘Four integration patterns: a
socio-technical approach to integration in IS development projects’, Information
Systems Journal, 20, pp. 53–80.

Ceruzzi, P.E. (1998) A history of modern computing. Cambridge, MA: MIT Press.

Cook, S., Harrison, R., Lehman, M. and Wernick, P. (2006) ‘Evolution in software
systems: foundations of the SPE classiﬁcation scheme’, Journal of Software
Maintenance and Evolution: research and practice, 18(1), pp. 1–35.

Davidsen, M. and Krogstie, J. (2010a) ‘A longitudinal study of development and
maintenance’, Information and Software Technology, 52(7), pp. 707–719.
Davidsen, M. and Krogstie, J. (2010b) ‘Information systems evolution over the last
15 years’, in B. Pernici (ed.) CAiSE 2010, LNCS 6051, pp. 296–301.

Dehaghani, S.M. and Hajrahimi, N. (2013) ‘Which factors affect software projects
maintenance cost more?’, Acta Informatica Medica, 21(1), pp. 63–66. Available at:

55

Part 1 – IT systems maintenance and evolution

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3610582/pdf/AIM-21-1-15.pdf
(Accessed: 4 March 2024).

De Oliveira, R.P. and de Almeida, E.S. (2016) ‘Evaluating Lehman’s laws of
software evolution for software product lines’, IEEE Software, 33(3), pp. 33–54.
Financial Conduct Authority (2023) Financial watchdog ﬁnes Equifax Ltd £11 million
for role in one of the largest cyber security breaches in history. Available at: https://
www.fca.org.uk/news/press-releases/equifax-ltd-ﬁne-cyber-security-breach (Accessed:
5 March 2024).

Glass, R.L. (2004) ‘Learning to distinguish a solution from a problem’, IEEE
Software, 21(3), pp. 111–112.
Godfrey, M.W. and German, D.M. (2013) ‘On the evolution of Lehman’s laws’,
Journal of Software: Evolution and Process, 26(7), pp. 613–619.

Heiskanen, A., Newman, M. and Eklin, M. (2008) ‘Control, trust, power, and the
dynamics of information system outsourcing relationships: a process study of
contractual software development’, Journal of Strategic Information Systems, 17(4),
pp. 268–286.

Hirschheim, R. and Klein, H. (2012) ‘A glorious and not-so-short history of the
information systems feld’, Journal of the Association for Information Systems, 13(4),
pp. 188–235.
IEEE (1990) Standard computer dictionary. New York: The Institute of Electrical and
Electronic Engineers.

ISO, IEC and IEEE (2022) ‘Software engineering — Software life cycle processes —
Maintenance’, in ISO/IEC/IEEE 14764:2022(E). 3rd edn.. New York: IEEE,
pp. 1–46.

Lauder, A. and Kent, S. (2000) ‘Legacy system anti-patterns and a pattern-oriented
migration response’, in P. Henderson (ed.) Systems engineering for business process
change: collected papers from the EPSRC Research Programme. London: Springer,
pp. 239–250.
Laudon, K.C. and Laudon, J.P. (2021) Management information systems: managing
the digital ﬁrm. 17th edn. Hoboken, NJ: Pearson.

Lehman, M. (1980) ‘Programs, life cycles and laws of software evolution’,
Proceedings of the IEEE, 68, pp. 1060–1076.
Lehman, M. and Belady, L. (1985) Program evolution: processes of software change.
London: Academic Press.

Leonard, J. (2023) ‘Case study: “Trailblazing” speedier public sector cloud migration:
legacy lift-and-shift at Forestry and Land Scotland’, Computing, 20 July. Available
at: https://www.computing.co.uk/feature/4120539/case-study-trailblazing-speedier-
public-sector-cloud-migration (Accessed: 5 March 2024).

Li, D., Guo, B., Shen, Y., Li, J. and Huang, Y. (2017) ‘The evolution of open-source
mobile applications: an empirical study’, Journal of Software: Evolution and Process,
29(7), article number e1855. Available at: https://doi.org/10.1002/smr.1855
Mao, J., Lee, J. and Deng, C. (2008) ‘Vendors’ perspectives on trust and control in
offshore information systems outsourcing’, Information & Management, 45,
pp. 482–492.

Meadows, D.H., Meadows, D.L., Randers, J. and Behrens, W. (1972) The limits to
growth: a report for the Club of Rome’s project on the predicament of mankind. New
York: Potomac Associates.

Mell, P. and Grance, T. (2011) The NIST deﬁnition of cloud computing:
recommendations of the National Institute of Standards and Technology.
Gaithersburg, MD: National Institute of Standards and Technology. Available at:

56

Part 1 – IT systems maintenance and evolution

https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-145.pdf
(Accessed: 5 March 2024).

Mintzberg, H. (1994) ‘The fall and rise of strategic planning’, Harvard Business
Review, 72(1), pp. 107–114.
Naughton, J. (1999) A brief history of the future: the origins of the internet. London:
Weidenfeld & Nicolson.

Ramage, M. (2006) ‘Forms and processes of information systems evolution’, 11th
Conference of the UK Academy of Information Systems. University of Gloucestershire
(United Kingdom), 9–11 April.
Ramage, M. and Bennett, K.H. (1998) ‘Maintaining maintainability’, Proceedings of
the IEEE International Conference on Software Maintenance. Bethesda, MD (United
States), 16–20 November. Washington DC: IEEE Computer Society, pp. 275–281.

Senge, P.M. (1990) The ﬁfth discipline: the art and practice of the learning
organization. New York: Doubleday.
Sneed, H. (1995) ‘Planning the reengineering of legacy systems’, IEEE Software, 12
(1), pp. 24–34.

Sneed, H. and Brössler, P. (2003) ‘Critical success factors in software maintenance: a
case study’, Proceedings of the International Conference on Software Maintenance.
Amsterdam, 22–26 September. Washington DC: IEEE Computer Society,
pp. 190–198.

Sommerville, I. (2016) Software engineering. 10th edn. Harlow: Pearson.
Swanson, E.B. (1976) ‘The dimensions of maintenance’, in Proceedings of the 2nd
International Conference on Software Engineering. Washington DC: IEEE Computer
Society, pp. 492–497.

Swanson, E.B. and Beath, C.M. (1989) ‘Organizational foundations for maintenance’,
Software Maintenance: Research and Practice, 1, pp. 47–58.
Truex, D.P., Baskerville, R. and Klein, H. (1999) ‘Growing systems in emergent
organizations’, Communications of the ACM, 42(8), pp. 117–123.

Trustwave (2014) 2014 Trustwave global security report. Chicago: Trustwave
Holdings. Available at: https://www.trustwave.com/en-us/resources/library/documents/
2014-trustwave-global-security-report/ (Accessed: 5 March 2024).

Vijaya, A. and Venkataraman. N. (2018) ‘Modernizing legacy systems: a re-
engineering approach’, International Journal of Web Portals (IJWP), 10(2),
pp. 50–60.
Ward, J. and Grifﬁths, P. (1996) Strategic planning for information systems.
Chichester: John Wiley.

Warren, I. (1998) The renaissance of legacy systems. London: Springer.
Zvegintzov, N. (1998) ‘Software should live longer’, IEEE Software, 15(4),
pp. 19–21.

57

Part 2 – Planning for an uncertain
future

Magnus Ramage

Part 2 – Planning for an uncertain future

Part 2 – Planning for an uncertain future

Introduction
The future is difﬁcult to predict. This might sound like an obvious statement,
yet it is all too often forgotten within corporate strategies and attempts at
forecasting. As Alan Kay, a computer scientist who worked at Xerox’s
celebrated Palo Alto Research Center, where many of the key inventions in
personal computing were developed, said in a talk in 1971, ‘the best way to
predict the future is to invent it’ (Kay, 1989).

Yet it is absolutely critical to be able to make sense of the future if we are
trying to plan for successful IT systems. Without a sense of where those IT
systems are going in the future, how can we possibly ensure their future
success? Thus it is important to look at the direction of trends within the
technological and organisational landscape within which the IT systems are
located.

The theme of this Part is various ways of making sense of future trends. We
will do this by ﬁrst looking at an attempt to clearly predict the future (using
technology forecasting), and then look at an alternative approach that says
that the future is inherently unpredictable (using scenario planning). We will
then bring these together to look at some issues in IT strategy planning.

2.1 Technology forecasting
How will technology change in the future? What will be the progress and
development of existing technologies? What new technologies should we be
watching for that might affect our organisation? This is the area of
technology forecasting. It is a complex task, but one that is very necessary
for the future-prooﬁng of information systems. We will begin with a box that
illustrates some of the issues around forecasting.

Box 2.1: Moore’s Law: forecast or self-fulfilling
prophecy?

In 1965, the integrated circuit designer Gordon Moore noticed that the
complexity of circuits on silicon chips roughly doubled every year, and
predicted that this effect would continue for the next ten years. By
‘complexity’ he meant the number of components (transistors) on a chip
– in 1965 there were typically 60 components on a chip, and he
predicted that by 1975 there would be 60 000. The prediction held good
for those ten years. In 1975 he updated the prediction, arguing that
growth would slow to the number of components doubling every two
years, and this rate has continued until the present day.

The phenomenon is known as Moore’s Law, and the term is also used
for any kind of observation of exponential growth within the computing

61

Part 2 – Planning for an uncertain future

industry. Various other factors – hard disk size, memory size, speed of
processors – grow in a similarly exponential way, doubling in short
spaces of time. A gap of 18 months is often suggested instead of two
years for some of those other growth phenomena. The form of the law
described by Linstone (1999, p. 225), although not directly the version
attributable to Moore, is typical: ‘microchips double in power and halve
in price every 18 months’.

Moore’s Law, widely known in the computing industry, might be
thought of as a self-fulﬁlling prophecy. Gordon Moore was one of the
founders of Intel, the dominant silicon chip manufacturer for many
years, and Intel’s products have largely obeyed his predictions.
Widespread knowledge of the law means that it may have lost the status
of prediction and become a benchmark against which changes in
computer hardware are measured – if new technologies meet Moore’s
Law they are held to be doing well; if not, there must be a problem with
them.

In fact, Moore’s Law has its limits. The physical properties of silicon
dictate that simply making the transistors on chips smaller and smaller,
allowing the chips to become denser and so hold more transistors, will
eventually become impossible. Writing in early 2015 – 50 years after
Moore formulated the ﬁrst version of his law – there are still ongoing
developments in chip design which continue the trends, but there are
signs that this cannot last forever. As Vardi (2014) has written, ‘the real
question is not when precisely Moore’s Law will die; one can say it is
already a walking dead’ (p. 5), although he acknowledges that the exact
time that the law will cease to be true is still uncertain.

Moore’s Law illustrates both the beneﬁts and the limitations of
technology forecasting. It is a tool that can be used as a guide for
action, but it is not everlasting, and to some extent it works because it
has been seen to work in the past.

There are a large number of methods available for technology forecasting,
each with its own body of experts and advocates. To take just one list of
methods, the Technology Futures Analysis Methods Working Group (2004)
lists 51 methods for what it refers to as ‘technology futures analysis’, ranging
alphabetically from ‘action analysis’ and ‘agent modelling’ to ‘TRIZ’ (a tool
whose name is from the Russian acronym for ‘the theory of inventive
problem solving’) and ‘vision generation’. These methods are both
quantitative and qualitative, and the authors group them into nine broad
families, which illustrate the range of techniques:

.

.

.

.

creativity
descriptive and matrices
statistical
expert opinion

62

Part 2 – Planning for an uncertain future

. monitoring and intelligence
. modelling and simulation

.

.

.

scenarios
trend analyses
valuing/decision/economic.

Given this broad range of techniques, it is hard to select methods which
illustrate all possible approaches to technology forecasting. We will look at
three methods in further detail: environmental scanning (SWOT and
STEEPLE), technology roadmapping, and Delphi. These three methods
illustrate the range of time and resources of such techniques possible – a
SWOT or STEEPLE analysis can be carried out by an individual in an hour,
while a full Delphi exercise will typically take several months of a large
group of experts’ time.

2.1.1 Environmental scanning using SWOT and STEEPLE
A basic concern in any form of technology forecasting is making sense of the
environment around organisations, often referred to as environmental
scanning. At the risk of restating the obvious, please remember that we’re
using the word ‘environment’ in its systems sense (those components that
inﬂuence the behaviour of a system or are inﬂuenced by it) rather than to
refer to the natural world.

You met a series of techniques for environmental scanning in Block 1 Part 4,
referred to there as ‘understanding the organisational context’. In the context
of technology forecasting, two are especially relevant, SWOT (the analysis of
Strengths, Weaknesses, Opportunities and Threats) and STEEPLE (the study
of seven key dimensions of the organisational environment summarised under
the abbreviation: Socio-cultural, Technological, Economic, Environmental,
Political, Legal, Ethical). The abbreviation sometimes appears as PESTLE, or
sometimes some of the factors are merged or omitted, leading to
abbreviations such as PEST and STEPS. Whichever dimensions (and thus
letters) are used, the key thing is to use as many dimensions as seems
appropriate to a particular situation – not too many or the analysis will
become unwieldy, but enough to capture the richness of an organisational
environment. You may ﬁnd it helpful to look back at the descriptions and
activities associated with SWOT and STEEPLE that you encountered in
Block 1 Part 4.

SWOT and STEEPLE can be used, as part of environmental scanning for
technology forecasting, either together or separately. We will not go into the
methods in much more detail here, but you may ﬁnd the following summary
of the main questions to ask in a STEEPLE analysis helpful:

Socio-cultural: [these] factors look at trends such as lifestyle factors,
cultural norms and expectations, such as career attitudes and work-life
balance. These factors are also concerned with consumer tastes and buying
habits as well as population demographics.

Technological: technology has grown exponentially. How is your business
responding to technological innovation in your products and services? Other

63

Part 2 – Planning for an uncertain future

technological advancements will impact on data storage, disruptive
technologies such as smartphones, social networking, automation robotics
and the increasing shift towards AI artiﬁcial intelligence.

Economic: economic factors will include exchange rates, economic growth
or decline, globalisation, inﬂation, interest rates and the cost of living,
labour costs and consumer spending.

Environmental: does your business have a direct impact on the
environment? Political sanctions now govern carbon emissions and a move
towards sustainable resources such as wind turbines and recycling. This
area also covers CSR (corporate social responsibility) and ethical sourcing
of goods and services which in turn has a direct impact on procurement and
your businesses supply chain management.

Political: when looking at political factors you will need to take into
account your country’s government policies and political stability. Other
factors will include tax implications, industry regulations and global trade
agreements and restrictions.

Legal: shifts in the legal landscape are constantly changing, especially here
in the UK. Employment labour law and employment tribunal decisions
impact upon working practices continuously. It is also important to keep up
to date with all changes in legislation and, of course, health and safety
regulations.

Ethical: are there external professional codes of practice or ethical codes
that apply to the organisation? What kinds of ethical statements/claims does
the organisation make to the world?

(adapted from Battista, 2023)

And similarly you may ﬁnd the following summary of the main factors
within a SWOT analysis helpful:

.

Strengths: positive tangible and intangible attributes, internal to an
organisation and within the organisation’s control.

. Weaknesses: internal factors within an organisation’s control that detract
from the organisation’s ability to attain the desired goal. Which areas
might the organisation improve?

. Opportunities: external attractive factors that represent the reason for an

organisation to exist and develop. What opportunities exist in the
environment, which will propel the organisation forward? Identify them
by their ‘time frames’.

. Threats: external factors beyond the organisation’s control which could
place the organisation mission or operation at risk. The organisation
may beneﬁt by having contingency plans to address them if they should
occur. Classify them by their severity and probability of occurrence.

(Haan, 2023)

One point of caution to note about SWOT analysis; what counts as a
weakness and what counts as a strength can look very different depending on
who is doing the analysis. Some years ago, the author was part of a group
conducting a SWOT analysis at a committee meeting of a voluntary
organisation, and things the committee clearly felt to be weaknesses were

64

Part 2 – Planning for an uncertain future

being defended strongly by the staff members present. Of course, surfacing
these different perspectives, and trying to understand the differences between
them, can often be helpful.

The following extract explains the relationship between a SWOT analysis and
organisational strategy, with an IT management slant:

The organization should be continuously monitoring and evaluating its
performance against its current objectives. Part of this monitoring process
will involve: forecasts of future sales, cash ﬂows, materials requirements
and proﬁtability, based on the current situation. In other words, when
developing business strategy the current operations of the organization will
have an implied future scenario, which can be compared with objectives.

As an input into the assessment of future performance it is common to
identify internal and external factors that will have a signiﬁcant impact.
This SWOT (strengths, weaknesses, opportunities, threats) analysis will
identify internal strengths, such as a highly trained and ﬂexible workforce,
and internal weaknesses, such as a poor internal information system,
together with external opportunities, such as the opening up of trade
through a common European Market, and external threats, such as the
absence of low economic entry barriers to the industry.

Given the predictions and the identiﬁed strengths, weaknesses, opportunities
and threats, it will be possible to estimate the extent of the gap between
future objectives and forecast future performance. The business strategy
should determine a series of measures and plans that will remove this gap.

(Curtis and Cobham, 2006, p. 156)

Both STEEPLE and SWOT analyses can be very detailed and subtle, or they
can be very broad and superﬁcial. Both approaches have genuine uses. They
have perhaps been overused in some organisations, where they are sometimes
used quite superﬁcially as a short exercise in a team meeting, with little real
impact. However, when used well, they can be a very good start to
understanding an organisational environment.

2.1.2 Technology roadmapping
A different technique for technology forecasting is technology roadmapping
– building a model of the way that a given set of technologies are expected
to develop over a number of years, ‘a plan that shows which technologies
will be used by which current or future product (or service or mission) and
by when these technologies have to be ready and at what level of
performance’ (de Weck, 2022, p. 216). The purpose of these roadmaps are
three-fold:

65

Part 2 – Planning for an uncertain future

.

.

show the relationships across technologies, capabilities, products/
services, and needs
align investments in technology and in the new development of new
capabilities to deliver on future market needs

. map technologies to products/missions/services and deﬁne a timeline for

maturation and technology adoption.

(de Weck 2022, p. 216)

The technique is often used by technology companies to identify
developments within their product area, for better product planning. It usually
involves the drawing of some kind of diagram that explores the evolution of
various forms of technology over time, perhaps in relation to product and
market developments. Such diagrams frequently take the generic form shown
in Figure 2.1.

time

Market

Product

Technology

Figure 2.1 Schematic technology roadmap showing how technology can be
aligned to product and service developments, business strategy, and market
opportunities (Source: Phaal, Farrukh, and Probert, 2004, p. 10)

Technology roadmapping is not a neutral process. It has been used for
decades by technology ﬁrms to understand the areas within which they work.
Motorola ﬁrst published a technology roadmap in 1987 (Kerr and
Phaal, 2020), intended as much to shape their ﬁeld of technology as to
describe it.

Thus technology roadmaps might readily be described as normative as much
as descriptive methods. In Box 2.1 (Section 2.1), we saw the importance of
Moore’s Law for shaping the semiconductor industry. This process occurred
through a series of publications called the International Technology Roadmap
for Semiconductors, published every two years from 1999 to 2015 to consider
the semiconductor industry’s needs over the forthcoming 15 years, and
address the challenge: ‘what capabilities need to be developed in order to
continue to realize Moore’s Law?’ (Kerr and Phaal, 2020, p. 6), This

66

Part 2 – Planning for an uncertain future

roadmap did not just describe the development of the semiconductor industry,
but actively shaped it.

Box 2.2 discusses a speciﬁc technique for technology roadmapping (referred
to as T-Plan) and gives an example of its use.

Box 2.2: A technique for technology roadmapping, and
an example of its use

The T-Plan process comprises four facilitated workshops. The ﬁrst three
focus on the three main layers of the roadmap (market/business,
product/service and technology), with the ﬁnal workshop bringing the
themes together on a time basis to construct the chart. The approach is
driven by market and business requirements, which are used to identify
and prioritise product and technology options. Thus, the process is
driven predominantly by market pull, although one of the aims is to
generate novel technology solutions that may give rise to new product
and market opportunities. Also important are the parallel management
activities, including planning and facilitation of workshops, process
coordination and follow-up actions. Simple linked analysis grids are
used to identify and assess the relationships between the various layers
and sublayers in the roadmap, similar in nature to the widely used
quality function deployment approach used in product and engineering
design.

[…]

Domino Printing Sciences started to roadmap using the T-Plan process
in 1998 when it decided that it needed stronger technical input for a
new strategic planning process. The UK-based company was aware that
its existing inkjet printing technology was reaching maturity and it had
recently purchased new technological capability in laser printing by
acquiring a US ﬁrm. Both the established and new business units have
carried out useful roadmapping applications. One established business
unit realised that it did not have a sufﬁciently good understanding of the
market, so it commissioned and took part in a six-month market
assessment before returning to its roadmapping process. The new
business unit found that roadmapping showed that an enabling
technology could be marketed separately as a product and that, contrary
to previous belief, it did not need to go outside the company for a
particular technical capability. During a recent acquisition of a German
laser company, the roadmapping method was used to plan the integration
of product and technology platforms.

(Source: adapted from Phaal, Farrukh and Probert, 2004, pp. 17, 21–22)

Related to technology roadmapping, it cannot be denied that perceptions of
technology are very important. Since 1995, Gartner, an IT consultancy ﬁrm,
has published annual ‘Hype Cycles’ showing the maturity and adoption of a

67

Part 2 – Planning for an uncertain future

variety of technologies. They divide the life cycle of a technology into ﬁve
stages, as illustrated in Figure 2.2:

1 Technology Trigger
2 Peak of Inﬂated Expectations
3 Trough of Disillusionment
4 Slope of Enlightenment
5 Plateau of Productivity.

Peak of Inflated
Expectations

VISIBILITY

Plateau of Productivity

Slope of

Enlightenment

Technology
Trigger

Trough of
Disillusionment

TIME

Figure 2.2 The Gartner Technology Hype Cycle (source: Jeremy Kemp, http://en.
wikipedia.org/wiki/File:Gartner_Hype_Cycle.svg)

For example, in their 2023 Hype Cycle (Gartner, 2023), they identify 25
emerging technologies which ﬁt into four themes, most of which they expect
to be achieved in 2–10 years: emergent AI; developer experience; pervasive
cloud; and human-centric security and privacy. The Hype Cycle, although
commercial and proprietary (and only available in its full form at
considerable expense) forms an interesting additional way of looking at
technology forecasts.

2.1.3 The Delphi method
Delphi can be a powerful way of obtaining and comparing information from
a wide variety of experts in aﬁ eld. Originally developed in the 1950s, it has
been widely used in a variety of settings across the world. Harold Linstone,
an expert in technology forecasting as well as systems design (you met his
framework for understanding sociotechnical systems in Block 2) describes
Delphi as follows:

Typically, a panel of experts is selected and a ﬁrst-round questionnaire is
prepared. If the subject is biotechnology forecasts, the panel might consist
of researchers in academe, government, and industry. The ﬁrst round
questionnaire might be transmitted to each participant essentially blank,

68

Part 2 – Planning for an uncertain future

asking each to list the biotechnology achievements they anticipate in, say,
the next ﬁfty years. The results are combined into a single new list that is
circulated to the panellists as the second round.

Each panellist is now asked to indicate for every item the ‘50% likelihood
year’, that is, the year by which the event is equally likely to have
happened or not to have happened. The results are combined into a new list
(the third round) with a statistical summary of the group’s second-round
responses. For example, achievement ‘A’ might have been forecast by one-
quarter of the participants to have 50% likelihood of occurring by 2005, by
half to occur by 2015, and by three quarters to occur by 2030. Each
panellist now sees how their ﬁrst estimate compares with the others’, but
without knowing who gave which date. If a panellist’s second-round
response differed markedly from that of the other panellists, they might be
asked in the third round to brieﬂy explain the reason for their previous
response.

Next, each panellist is asked to re-estimate the 50% year for each item
(which may or may not be the same as the estimate given in the previous
round). The total number of rounds depends on the variations between
rounds. The process should stop when stability is attained, that is, there are
no more signiﬁcant changes. A consensus may or may not develop.

(adapted from Linstone, 1999, pp. 284–285)

The anonymity of the approach is especially important – because it is
conducted through questionnaires rather than in a group setting, panellists do
not see each other, and are unaware of each other’s identities. This makes it
less likely that the process is driven by the views of a small number of
powerful voices, compared with many other methods. Box 2.3 gives an
example of the results of a Delphi exercise.

Box 2.3: Delphi in use

An example of the large-scale use of Delphi involved an international
group of 237 scientists, futures and technology policy advisers,
examining likely technological and scientiﬁc change over a 25-year
period. The panel were asked a number of questions relating to both
science and technology. Three of the questions asked and the answers
given by the panel are as follows:

What emerging technologies are likely to have the most positive
economic impact over the next 25 years?

. New, clean, and inexpensive energy technologies.
. Alternative energy sources.
. Medicines derived from the knowledge founded in the Human

Genome Project.
. Nanotechnologies.

69

Part 2 – Planning for an uncertain future

. Global rules and institutions – global governance (not global

government) with practical techniques that radically reduce the
occurrence of wars.

What are some seminal, key, or profound scientiﬁc developments
that might occur during the next 25 years?

. Fusion or some other forms of cheap, abundant power with minimal

adverse environmental consequences.

. Discovery of the underlying principle, ‘the ﬁnal theory’ that links

quantum physics and relativity to explain the range of particles and
forces that make up the universe.

. Computers that achieve awareness and can evolve.
. Major advances in information theory, computer technology, and

telecommunications.

. Capacity to build things cheaply and reliably by moving individual

atoms and molecules.

What are the key emerging international issues in [science and
technology] over the next 25 years?

. Assure that projects that can have deleterious consequences (from

environmental pollution to tools for terrorists) have full visibility and
public scrutiny, no matter where they occur.

. Global justice in access to information.
. How economic interests sort out in an increasingly multinational

.

world of [science and technology] investments and collaborations.
International scientiﬁc boards that deﬁne terms, standards, and
measurements for environmentally friendly technologies and their
production.

. Public ownership of intellectual property critical to serve the public

good.

(Source: Glenn and Gordon, 2004, pp. 409–410)

70

Part 2 – Planning for an uncertain future

The Delphi method is not without its ﬂaws, though:

.

.

It is time-consuming and difﬁcult to set up a Delphi panel.
It tends to arrive at extrapolation from existing trends in technologies,
rather than identifying large-scale future changes in technology
(sometimes called ‘disruptive technologies’).

. By being expert-driven it risks ignoring the perspectives of those in

politically weak positions or at the margins of decision-making, but from
who real change very often comes.

. Experts can sometimes be over-optimistic, suggesting that technological
changes are likely to happen much more quickly than actually occurs.

. There is a risk of experts reﬂecting the interests of big business/

corporations in pushing speciﬁc agendas (perhaps because they receive
explicit funding from these corporations, which may or may not be openly
disclosed).

Activity 2.1 (self-assessment)

20 minutes
Have you used any of SWOT, STEEPLE, technology roadmapping or Delphi
in a practical context (outside of this module)? If so, did you ﬁnd them
useful?

Whether you have used these methods or not, for each method make a note
of two situations where you could imagine they might prove useful.

Technology forecasting is a useful part of ensuring that changes to IT systems
will be useful ones for the foreseeable future – it is one part of the avoidance
of legacy systems. However, all forecasting has its limits, as argued by Kees
van der Heijden (whose work around scenario planning will be discussed
later in this Part):

If it rains in the Himalayas today we can predict that the Ganges will
overﬂow its banks downstream in a few days’ time. How do we know this?
First of all this has happened in a consistent manner many times in the past.
We know the pattern and assume we can make extrapolations. But we know
more. We also understand the causal laws of hydrodynamics, which explain
how the two events are causally related over time. This makes us into very
conﬁdent forecasters; our structural knowledge tells us that there will not be
a break in trend this time. We can’t have that degree of conﬁdence about a
similar relationship between war in the Middle East and the price of oil. In
human affairs causal relationships are less ﬁrm and enduring.

(van der Heijden, 2004, p. 206)

While techniques of technology forecasting can be very useful, it is
arguments such as those in the preceding paragraph that lead us to our next
consideration: issues of uncertainty.

71

Part 2 – Planning for an uncertain future

2.2 Uncertainty in understanding future trends
There are times when it is possible to make statements about the future that
are sensible and reliable, but these tend to be conﬁned to a narrow range.
Forecasting works best with a well-understood area of interest, happening in
the relatively short-term and with few external factors that inﬂuence it. If
some or all of these are not the case, it becomes much more difﬁcult.
Box 2.4 shows some of the classic failures to predict the future. (Some of
them may not exactly have been said in the form quoted, but something
similar was certainly said.)

Box 2.4: Predictions that did not work as expected

This telephone has too many shortcomings to be seriously
considered as a means of communication. The device is
inherently of no value to us.

(Western Union internal memo, 1876)

Heavier-than-air ﬂying machines are impossible.

(Lord Kelvin, President, Royal Society, 1895)

Everything that can be invented has been invented.

(Charles H. Duell, Commissioner, US Ofﬁce of Patents, 1899)

Who the hell wants to hear actors talk?

(H.M. Warner, Warner Brothers, 1927)

Stocks have reached what looks like a permanently high
plateau.

(Irving Fisher, Professor of Economics, Yale University, 1929)

I think there is a world market for maybe ﬁve computers.

(Thomas Watson, chairman of IBM, 1943)

We don’t like their sound, and guitar music is on the way out.

(Decca Records rejecting the Beatles, 1962)

640K ought to be enough for anybody.

(Bill Gates, Microsoft, 1981)

So many of the issues that affect organisations and their IT systems are
essentially unknowable. Some of this is due to complexity: the wide range of
issues that have an impact on the organisation, and the interconnectedness of
those issues. Consider for a moment the monthly sales of a small local shop.
They may well be fairly stable from month to month, given normal seasonal
variations (such as ice creams selling better in the summer) and special

72

Part 2 – Planning for an uncertain future

promotions from the products they sell. Local factors, such as the behaviour
of the supermarket up the road, can also have an impact on sales. But what
do they do if their wholesaler is no longer able to supply them with their
bestselling products because of some problems at the manufacturers? The
manufacturer’s problems might in turn be due to an event somewhere else in
the world (say, a vital ingredient or raw materials that they normally obtain
from a faraway country becoming unavailable as a result of war or natural
disaster). Such a chain of events is far outside the shop’s control, or perhaps
even their expectations, but could have a big impact on them.

A second issue is that of the difﬁculty of prediction. When experts
authoritatively predict something to be the case they are frequently correct,
but they are sometimes spectacularly wrong. Some of this is due to false
assumptions of linear change – that the future will be like the past, only more
so − but some is simply due to a lack of awareness. The results often make
those who have made the predictions look rather foolish. There are many
such failed predictions documented and widely used by consultants and on
the web; some of these are included in Box 2.4. It also has to be said that
many of those speaking went on to be highly successful in the areas they
failed to predict, so that recovery is quite possible. Less spectacularly, many
trends that have been widely predicted by experts, for example the paperless
ofﬁce, the leisure society, the end of books, and people living on the Moon,
have not (yet) come about.

Activity 2.2 (exploratory)

15 minutes
What seemingly authoritative predictions have you heard recently about the
future of technology, business, society, politics? (Such predictions are often
found through a variety of technology and business podcasts, TV and radio
shows, social media and newspapers.) Are you sure they were accurate, or
might they be proved as foolish in retrospect as those in Box 2.4? Make sure
you keep a note of the source of the predictions. Do you think it makes a
difference where they came from?

Share the predictions you have heard, the sources from which they came, and
your view of their accuracy, on the module discussion forum.

The third issue that makes forecasting difﬁcult is that of large-scale
discontinuities (events or trends that make the world signiﬁcantly different
from the way things have been previously). Some change is simply so
unexpected that it cannot be foreseen, even by the best experts. This includes
economic change, such as the Wall Street Crash of 1929 or the banking
collapse of 2008; social change, such as the arrival of HIV/AIDS or the
COVID-19 pandemic; political change, such as the invasion of Ukraine by
Russia in 2022; technological change, such as the rise of social networks or
generative artiﬁcial intelligence; and environmental change, such as an
increase in ﬂooding around the world. Many of these events happened more
or less overnight; others were a little more gradual.

73

Part 2 – Planning for an uncertain future

Events like these are often completely unexpected by almost everyone. In
many of the cases listed above, some experts in the given ﬁeld were trying to
draw public attention to the issue – for example, economists arguing that the
banking system was unsustainable in 2007, or CIA analysts with speciﬁc
intelligence of a possible Russian invasion of Ukraine at the end of 2021 and
early 2022. However these experts were often ignored by key decision
makers and not heard by the wider public. So it is not accurate to say that
nobody saw them coming – but for most people they were unexpected.

When these kinds of events happen, they have an enormous impact – clearly
on those directly involved, but also on a very wide range of other people.
Understanding these, and preparing for them, is a key part of scenario
planning, as you will see later.

Schwartz, talking about the economic effects of the September 11 attacks
(while not at all denying the huge human tragedy), comments that:

The damage to the World Trade Centre was trivial compared to what it did
to the US economy; we probably lost $1 trillion as a result of the fall in
growth. The ﬁrst-order impact was terrible here in New York – awful,
catastrophic – but we made it much worse by opting not toﬂ y, by
cancelling meetings, and so on.

(Schwartz, 2004, p. 31)

Most of the examples given here are large-scale events. Yet it is also the case
that small-scale events can cause very large change. This is akin to the
‘butterﬂy effect’ of chaos theory, where a small event has a big effect on
something apparently unrelated and far away.

One answer to these difﬁculties with prediction is to ignore them and only
model the things that can be predicted.

A completely different approach is to model many different futures at once,
and to build strategies that are ready for each of those different futures. This
is the approach of scenario planning, which we will consider next.

2.3 Introduction to scenario planning
There is a sense in which scenario planning is not a novel approach at all.
Whenever we make a decision that could be affected by external factors, we
make a guess about how those factors will change in the future, and we make
sure that our decision will ﬁt with those possibilities. In taking out a
mortgage, for instance, most people would check that they can afford
repayments at current interest rates; sensible people would also check that
they can afford repayments if rates rise signiﬁcantly. Likewise, when going
on holiday, most people tend to take clothes for a range of possible
temperatures and weather. These are examples of constructing a set of
possible scenarios, and being ready for any of these to occur. In a sense,
business strategists have always done this.

Scenario planning as a method, though, refers to the explicit analysis and
statement of a set of possible futures, usually in some detail. In this sense,

74

Part 2 – Planning for an uncertain future

the method originates in military planning, where armies build detailed
analyses of the various possible ways battles, wars and potential attacks
might progress, and create plans for each of these situations. This is strategic
planning in its original form (and indeed ‘strategic’ comes from the ancient
Greek word for a military general). Van der Heijden et al. (2002) suggest that
the ﬁrst explicitly documented military scenarios were created in the
nineteenth century, by the Prussian generals Karl von Clausewitz and
Helmuth von Moltke the Elder.

The use of scenario planning as a military tool was particularly taken up after
the Second World War by the RAND Corporation, an American ‘think tank’
largely working on defence issues, as part of the method of systems analysis
that it created. Scenario work especially became associated with Herman
Kahn, a RAND analyst until 1961 when he founded his own think tank. Kahn
became famous for work in which he analysed the possibility of the USA
ﬁghting a nuclear war, what possible outcomes of such a war would look
like, and what were the strategic implications for the US military. Kahn and
Wiener (1967, p. 262) described scenarios as ‘attempts to describe in some
detail a hypothetical sequence of events that could lead plausibly to the
situation envisaged’ but warned (p. 264) that ‘it is important not to limit
oneself to the most plausible, conventional, or probable situations and
behaviour’.

Note: Herman Kahn was very clear that the scenarios developed were
stories, ways of making sense of the future, and not predictions. He said
that ‘they are only scenarios, intended to be used as thinking tools,
nothing more’ (quoted by van der Heijden et al., 2002, p. 127). This is
an important point to bear in mind as you read the scenarios described
in this Part, and later develop your own: scenarios are intended to
inform the present, not to predict the future.

Kahn’s work was taken up by a number of others, notably a group of
academics in France who applied it to public policy and to private enterprise
(Godet, 2001). A similar approach to Kahn’s was taken in the ‘Limits to
Growth’ study of long-term economic development (Meadows et al., 1972),
although Kahn disagreed strongly with this work’s conclusions (e.g. in Kahn,
Brown and Martel, 1976). However, the widespread application of scenario
planning in business, from which most other scenario work ﬂows, began in
the early 1970s with Pierre Wack at the oil company Shell.

It is worth noting that Shell has attracted criticism for some of its activities
in the Global South and its attitude to environmental issues. This is not
unusual for large oil companies, many of which have been somewhat
controversial in various actions. In this text we take their methods of scenario
planning, rather than the organisation as a whole, as a role model. It might
nonetheless be seen as rather paradoxical to be learning about possible
futures from an organisation whose primary purpose for decades has been the
extraction of fossil fuels, the use of which is destroying our planet, and we

75

Part 2 – Planning for an uncertain future

will raise this point from time to time. Andersson (2020), who has carefully
studied the archives of Shell’s scenario work, observes that:

the scenario archives contain almost no mention at all of the environmental
effects of burning fossil fuels, which supports the conclusion that the
scenarios were not used to discuss atmospheric effects of CO2 until the late
1980s and that their main purpose was not to manage a sustainable
transition for oil but to consider a number of deeply problematic futures for
the oil industry. […] there is no evidence in the scenario archives that the
main purpose of the scenarios was to help Shell become an environmentally
sustainable or socially responsible corporation, which is how the scenarios
have been showcased in company historiography and important parts of the
management literature.

(Andersson, 2020, pp. 731–732)

By the mid-1960s Shell had a large planning department, with the goal of
ensuring ‘long-term forecasting of cash ﬂow, in order to give the company
time to take corrective action, thus reducing unnecessary costs’ (van der
Heijden et al., 2002, p. 131). Their planning method was not proving
sufﬁciently reliable, and Wack became convinced that this was because the
method was trying to use predictive techniques for information that was
essentially unpredictable. Around this time, Kahn and Wiener’s work (1967)
was published, and Wack’s team decided to do a similar study of the way that
the global price of oil might change by the year 2000. They concluded that
within the next few years, the price of oil would increase very steeply.

While senior managers in the company were very sceptical, Wack’s team
presented this as one of a number of scenarios that Shell needed to be ready
for, and in 1973 the global price of oil indeed rose from US$2 per barrel to
US$13 per barrel (the event often known as the ‘oil crisis’). Shell was ready
for this crisis, and went from being the least proﬁtable of the major global oil
companies to one of the most proﬁtable. The scenario team was also able to
help Shell be ready for a further oil price rise in 1979 to US$35 per barrel, as
well as a number of wider developments such as ‘the growth of energy
conservation and the reduction of demand for oil, the evolution of the global
environmental movement, even the breakup of the Soviet Union’ (de Geus,
1997, p. 67). From that time onwards (to the present day), Shell has
developed a new set of scenarios every three years, and tested all corporate
strategies against those scenarios. We will look later at some of their
methods. Pierre Wack came gradually to understand what really made the
scenario work at Shell useful:

To affect behaviour in a useful way, he decided, the task was not just to
argue with managers or to lay out facts before them but to inﬂuence their
‘mental maps’: to enlighten them, broaden their perceptions, and thus help
them change the underlying assumptions they held about the way the world
worked.

(Kleiner, 2008, p. 153)

Partly as a result of Shell’s success during the oil crisis, the use of scenarios
grew considerably from the mid-1970s onwards. Van der Heijden et al.

76

Part 2 – Planning for an uncertain future

(2002) report that by 1981, more than 75% of the biggest companies in the
USA (the Fortune 100) were using some sort of scenarios in their planning.
The 1980s and 1990s saw the use of scenarios spreading to many more
companies, especially as a number of the key scenario planners at Shell (such
as Pierre Wack, Arie de Geus, Kees van der Heijden and Peter Schwartz)
wrote articles and books about their work. The Shell approach to scenarios
has in this way become established as the main way that scenario planning is
conducted. A video showing an example of this work is linked from the
Block 3 Part 2 resources section of the module website.

Variants on the Shell approach have been used in many companies, and also
in the public sector. One of the most high-proﬁle examples was the ‘Mont
Fleur’ scenarios in South Africa, produced in 1992 at the end of the apartheid
era in that country. By being produced collaboratively by people from right
across the various political and ethnic divides that then existed in South
Africa, and helping them to think about possible futures dispassionately, the
scenarios were an element (among others) in the peaceful transition to
majority rule. The scenarios produced were widely disseminated among the
various interest groups in the transition away from apartheid, and were
published in some detail in a national South African newspaper. Kahane, the
facilitator of the exercise and a former Shell scenario planner, described the
process thus:

The Mont Fleur project contributed to the building of a common language
for talking across groups about the opportunities and challenges facing the
country. This shared understanding – together with the fruits of constant
other workshops, meetings, and negotiations – eventually helped lead to the
unprecedented ‘miraculous’ transition from minority to majority rule
in 1994. One speciﬁc Mont Fleur contribution was creating a more realistic
assessment of the crucial economic dimension of the transition; previously,
most people had focused only on political, military and constitutional
aspects.

(Kahane, 1999, p. 84)

The most recent set of scenarios produced by Shell (at the time of writing)
appeared in 2023, under the title of the Energy Security Scenarios. There are
two scenarios in their set, Archipelagos and Sky 2050, which present two
plausible patterns for the future to around 2050 and onwards, with particular
concern for the climate emergency and net-zero transition – although as we
have noted above, a concern for net-zero has to be taken in the context of the
company’s oil extraction. The scenarios are summarised as follows:

In Archipelagos, the security mindset that is dominant today becomes
entrenched worldwide. Global sentiment shifts away from managing
emissions and towards energy security. […] Competition between nations
spreads into many aspects of life, and results in multiple technology races –
including in relation to new energy technologies. By 2040, a multi-polar
trading world has developed with ﬁerce competition over trade with India
and some African and Latin American nations. Rather than working
together to address climate change, clusters of nations now scramble to
secure energy supply and focus on building energy resilience to withstand

77

Part 2 – Planning for an uncertain future

future shocks. Emissions fall throughout the century, with net zero in sight,
but still not achieved, by 2100.

In Sky 2050, long-term climate security is the primary anchor, with speciﬁc
targets to reach net zero by 2050 and ultimately bring the global average
surface temperature rise to 1.5°C by 2100. […] At the outset, international
institutions appear ineffectual in supporting the Paris Agreement and
nations cling to archetype behaviours, driven by their vulnerability to
energy supply failure or energy price volatility. Soon, however, citizens
themselves start to push for change within their own countries and rapidly
adopt new technologies to deliver environmental security. […] What might
have taken decades to negotiate now takes much less time as individual
nations, cities and companies ‘just go for it!’, with the world reaching net-
zero emissions in 2050.

(Shell, 2023, pp. 8–9)

The scenarios are not intended to be binary choices, or as precise snapshots
of the future, but rather as stories which are plausible but surprising. As
Wilkinson and Kupers (2013) have written:

Plausible stories encourage judgment, not just attention to data and other
information. By acknowledging that subjective judgment and intuition are
an integral part of the leadership process, scenarios create a safe space in
which to acknowledge uncertainty. An intuitive understanding of the world
precedes and frames the analytical understanding that follows. Intuition is
the essence of entrepreneurial value creation, and it can be stiﬂed by a
paralysis of analysis.

(Wilkinson and Kupers, 2013, p. 122)

Activity 2.3 (exploratory)

1 hour
Download and skim read the Energy Security Scenarios Summary
(Shell, 2023). You will ﬁnd a link in the Block 3 Part 2 resources section of
the module website. The document is fairly long (there is also an even longer
‘full report’ on the scenarios), but you should at least read the opening
sections on how the scenarios were produced, and the summaries of the two
main scenarios.

Make notes about:

(a) how the world might look by 2050 under the two scenarios
(b) what you have learnt about the world today from looking at these

scenarios, and whether Shell’s role as an oil producer has impacted upon
these scenarios.

78

Part 2 – Planning for an uncertain future

Sometimes if a set of scenarios becomes well-known among decision makers
or the general public, it can have an effect upon shaping the future. A classic
example is George Orwell’s novel Nineteen Eighty-Four, published in 1949
and portraying a nightmare world of the future (a form of scenario). As the
real year 1984 approached, there was quite a lot of public debate around
whether the world as it really existed resembled the one Orwell had
portrayed.

More recently, some have argued that the world we inhabit today bears some
resemblance to both Orwell’s nightmare world and that depicted in another
widely read dystopian ﬁction, Aldous Huxley’s Brave New World (published
in 1932):

In a previous era, the most prophetic evocations of where we were headed
were produced by two Old Etonian novelists – George Orwell and Aldous
Huxley. Orwell thought we would be destroyed by the things we fear,
particularly comprehensive surveillance. Huxley conjectured that we would
be destroyed by the things that delight us. As it happens, we’ve wound up
with both. NSA/GCHQ are doing the Orwellian stuff, while Google,
Facebook, Apple, Yahoo, Microsoft, Skype et al are taking care of the
Huxleyan side of things.

(Naughton, 2014)

2.4 Methods for scenario planning
Having looked at the history of scenario planning, we now turn to the ways
in which scenarios are generated. Before doing this, we must remind
ourselves of the purpose of scenarios – they are essentially snapshots of the
present understanding of the future; they are not predictions. Just as science
ﬁction tells us more about present-day concerns than reliably predicting the
future (seek out some old science ﬁction from the 1940s if you doubt this),
this is also the case with scenario planning. Events will always overtake our
expectations. As Godet puts it:

A scenario is not a future reality. A scenario is simply a means to represent
a future reality in order to shed light on current action in view of possible
and desirable futures.

(Godet, 2001, p. 63)

Methods for scenario planning can take many forms, but they tend to be
divided by two main issues:

.

.

the timescale of the scenario exercise: some organisations build good
scenarios in a single day or less, others take a year to do it.
the nature of the participants: some scenario exercises are largely based
around experts’ work, others largely around a wide group of stakeholders
working participatively.

79

Part 2 – Planning for an uncertain future

To some extent, these two issues are connected, so that there tend to be two
main forms of scenario planning exercise:

.

.

those that are longer in duration, and are largely driven by experts
(perhaps at times working with various stakeholder groups)
those that are shorter in duration, involving a wide range of people.

Scenario exercises at large organisations often favour the ﬁrst form; in
smaller organisations the second is more often used. The shorter, more
participatory form is growing in popularity as many organisations see the
value of scenario planning but have not got the time or resources to commit
to a large-scale exercise. The Mont Fleur scenarios combined the two styles –
the process took several months, and had a core group of scenario builders,
but most were members of the various stakeholder communities (ethnic and
political groups, industry and academia) rather than experts in doing scenario
work.

The ﬁrst form produces detailed, clear and extremely well-informed
scenarios, but risks its perspectives only coming from senior management or
designated expert participants. It is also very time-consuming and expensive.
The second form requires a lot less time and commitment, and produces fast
and dynamic scenarios that harness the energy and knowledge of stakeholders
with very diverse perspectives, but its speed means that the resulting
scenarios may be less useful as a guide to strategy. Some blending between
the two forms is possible, and neither is the ‘true form’ of scenario
planning − each is useful for different situations.

The two forms of scenario planning have much in common. First, the focus
of the scenarios needs to be set sufﬁciently far in advance in time that the
resulting scenarios are not part of the standard strategic planning horizon of
the organisation – typically 10–15 years in the future. Second, the issues
under consideration must be somewhat removed from those that the
organisation can directly control – focusing on the appropriate industry sector
or the broader social–political environment is much more likely to produce
useful insights than focusing on the future structure or business of the
organisation. Third, the process needs to produce at least two scenarios, they
need to be equally plausible, and each must be a blend of positive and
negative features.

The example that follows in Box 2.5 shows the kind of situation where
scenario planning might be useful. You will use it in two activities later in
this Part.

80

Part 2 – Planning for an uncertain future

Box 2.5: City Harvest - distributing unwanted fruit and
veg to 350 charities

The day starts very early for City Harvest drivers, because that’s when
fruit and veg traders decide whether a pallet of carrots or cabbages will
be saleable. If not, the drivers are ready to take it off their hands.

City Harvest is a London-based charity that picks up unwanted food
from wholesale distribution centres like New Spitalﬁelds Market in
Stratford, and delivers it to other charities, ranging from food banks to
homeless shelters to after school clubs all across the capital, who use it
to prepare meals. Seven years ago, the organisation possessed a single
van and collected food from a single source – a wholefood shop in
Kensington. Now it has 17 vans and collects from London’s large
distribution hubs, transferring produce to its 130,000 square-foot
warehousing facilities in Acton, from where it is delivered to charities
who turn it into nutritious meals for hungry people.

Sometimes the food is mislabelled, sometimes it’s misshapen, sometimes
it’s close to its use-by date. Whatever the reason for its rejection, the
vast majority can be rescued from disposal and turned into nutritious
meals, but ﬁrst it must be got from A to B. With 350 charities to serve,
and with both ends of the supply chain characterised by unpredictability,
this is a more complex task than it might appear. The recipient charities
have very different food needs which also vary from day to day, as does
the produce on offer, making it hard to plan ahead. Food needs to be
collected, warehoused or refrigerated and delivered in a logical order, so
ﬂexibility is essential. City Harvest needs to be able to turn on a
sixpence, said [former] CEO David Carter. ‘We’re all about being
snappy, agile, responsive, because this food literally has the clock
ticking – a retailer or a distributor wouldn’t be giving it to us if they felt
they could sell it. It’s got to go really quite quickly.’

Fast food
Optimising supply chains is an issue faced by every delivery service,
including the likes of Amazon, but City Harvest felt its logistics needs
were unique, given its size, sector and expansion plans. Certainly, pen
and paper and spreadsheets had reached their limits. Shortly before the
pandemic, it rolled out a bespoke system designed in partnership with
Tibco, whose product designers arose at the crack of dawn to work
alongside the delivery people in order to gain ﬁrst-hand experience of
the issues they faced.

Launching phases one and two in just 14 days, Tibco’s team provided an
agile, cloud-based, low-code solution to sustain City Harvest’s
partnerships and keep people fed. Tibco Spotﬁre robust data
visualization, Tibco Cloud Live Apps low-code environment for building
applications, the Tibco Cloud Integration platform for creating APIs,

81

Part 2 – Planning for an uncertain future

Tibco Cloud Mashery API access management, and the Tibco Cloud
Starters app were used to bring it all together.

The low code environment enabled Tibco developers to build the app in
days, not months. The collaboration between Tibco and City Harvest
teams allowed for agility and quick responses to an evolving situation.
Lockdown rules were rapidly changing in those ﬁrst weeks, and the non-
proﬁt had to react fast.

Its new smart application features a custom cloud starter infused with
visual analytics. Warehouse drivers can see a map of London and all
relevant charities to plan efﬁcient distribution routes, as well as create
and send messages to partners through use of APIs. The new application
allows communicating with all its food sourcing and distribution
partners—keeping track of changes in operating hours and community
needs. Ease of communication is crucial for City Harvest’s small team
as they do not have the ability to contact 300 charities every day.

The third phase, still in process, is a platform that streamlines corporate
fundraising so the non-proﬁt can continue to thrive.

The system made an immediate difference, said Carter, allowing the
charity to increase its capacity and for drivers to optimise their routes
on the ﬂy. ‘We get a notiﬁcation to say ‘there’s two tonnes of vegetables
which a distribution centre has just discovered tucked away in the back
of a fridge, do you want them?’. The answer is always yes. But the
cleverness happens when mid-route that food is picked up and collected
making use of the now empty capacity from the previous drops.’

Transforming into an insights-driven organisation
Becoming an insights-driven organisation was made possible through the
application’s map, data collection form, and analytic dashboards that
help surface important ﬁndings about the groups that receive donations.

Locating organisations that needed food donations was particularly
important during the COVID-19 lockdown. The non-proﬁt suddenly had
a massive inﬂux of newly donated perishable inventory and needed to
quickly identify who would beneﬁt. The team could locate various
organizations on the app’s map – homeless shelters, community groups,
soup kitchens, youth hostels – to see where to make daily food
deliveries, and how to do that most efﬁciently.

The app also allows the company to better communicate with food
donors and monitor pickup requests, highlighting those that haven’t
responded and updating the app immediately when they do. The user-
friendly platform is especially helpful because many City Harvest
partners may not be digitally savvy.

A signiﬁcant beneﬁt is the ability to gather and act on new information.
All the team has to do is click on the charity of interest, and the system
sends a form for the recipient toﬁ ll in – faster and more reliable than
continuous phone calls. They can keep track of community group open/
closed status, their facilities, and food requirements (such as Halal,

82

Part 2 – Planning for an uncertain future

Kosher, vegetarian) – and accurately match food donations to the right
groups.

With Data, Delivering Meals for Years to Come
Using this new technology, City Harvest London maximised its efforts
and reached more people than ever before, increasing food distribution
from four million meals yearly to four million meals in one month.
Solving a huge logistical and humanitarian challenge in a matter of
days, City Harvest delivered 12 times more meals during the height of
the pandemic.

Its new smart app is helping it better partner with other charities,
streamline communications, and simplify the food donation experience
for everyone. With data at the center of its operations, City Harvest can
get food from point A to B with ease and faster than ever – and make a
greater impact. With this success, the non-proﬁt recently expanded to a
larger warehouse and doubled its delivery capacity – upgrading from 10
to 20 vans already this year.

To date, City Harvest has redistributed food valued at more than £33
million to charity partners, who can apply the budget savings to other
essential community services. Additionally, building on its Tibco
technology foundation, the non-proﬁt is establishing a new fundraising
platform to provide data-as-a-service to retailers and grocers, enabling
greater insight into food donations, inventory planning, and tax
preparation.

(Source: adapted from Leonard, 2021 and Tibco, 2021)

The next two sections present two methods for building scenarios. They do
not necessarily correspond to the two main forms described above of longer,
expert-driven, and shorter, more participatory scenario exercises. Either
method can be used in either of the two main forms. Both methods can be
useful and there are clear overlaps between them.

2.4.1 Method 1: Story-driven Scenario Planning
This method describes a simple approach to building scenarios, which can be
used in a short workshop, a longer-term scenario exercise, or indeed by a
single individual who wants to get a sense of the possible futures around a
particular system or organisation. The stages described here are a condensed
form of the approach used by a number of different practitioners of scenario
planning; the name ‘Story-Driven Scenario Planning’ has been created for
this module. They have been well-described by Ged Davis, who worked in
scenario planning at Shell for many years. Davis (1998) describes a set of
stages that are common to all forms of scenario building:

83

Part 2 – Planning for an uncertain future

We begin with the crucial assessment of what are the ‘things that really
matter’. When the focus or theme has been clariﬁed the main areas of
required research are identiﬁed, and information gathered. At this stage,
participants need to be far-ranging, deliberately taking in a wide range of
views so as to construct a basis for creative thinking and to get ‘outside the
box’.

The next step is to identify and analyse driving forces that will shape the
environment. What will persist and can be forecast, for example,
demography in many exercises, and what may change and is unknown?

Following the identiﬁcation of the driving forces, we can now contemplate
a set of plausible storylines. These will need to be structured; the relevant
interconnections identiﬁed; and the scenario logics, including
discontinuities, deﬁned. The relevant plots and stories, including their
dynamics, need to be developed, and, in some cases, the scenarios must be
quantiﬁed. The scenarios are then usable as new frames of reference.

(Davis, 1998, p. 4)

This method follows the three stages which Davis identiﬁes, but splits the
ﬁnal stage into two for clarity. These stages apply whether the scenarios take
one day or two years to build, though clearly the speciﬁc activities will vary
depending on how the method is used. The author has personally used this
method to enable a group to build a set of scenarios in half a day. We will
now consider the three stages in more detail:

1 Clarifying the focus and timescale: This is sometimes foreshortened, but
vitally important – just as when drawing a systems diagram one needs to
be clear about the system boundary, so when conducting a scenario
exercise, one needs to be clear about the focus and the timescale. Not
doing so can make for much weaker results. We have suggested earlier
that a time horizon of at least 10–15 years is necessary to avoid being
trapped in today’s thinking. It is vital to be clear about what ‘mental
models’ (the assumptions and worldviews) are underlying your
identiﬁcation of a particular issue as the focus for scenario planning
(Schwartz, 1991), and particularly to look for questions that will challenge
established wisdom within your organisation or within yourself as an
individual. Schwartz also talks about the importance of being clear about
the level of decision underlying the scenario exercise:

[O]ur decision making at Shell moved constantly between narrow questions,
related to speciﬁc situations (‘Should we invest in a new offshore
platform?’), and broad ones, related to the world at large (‘What is going to
happen to the Soviet Union?’). This is typical. Scenario-builders should
consider both types of questions: otherwise, it’s easy to lose sight of issues
that could be important.

(Schwartz, 1991, p. 60)

84

Part 2 – Planning for an uncertain future

2 Analysing driving forces: Driving forces are the key factors in the

environment of an organisation that have an impact on its future. At large
organisations (such as Shell) which use expert analysts, the process of
analysing these takes many months of research, both by the scenario
planning team and by experts in particular areas.
However, it is quite possible to analyse driving forces in an hour or two
within shorter methods. A common way of making sense of driving forces
is to consider them using the STEEPLE categories that were discussed
earlier in this Part. It is rarely the case that a single driving force will be
found within one STEEPLE category; it is usually much more useful to
identify multiple forces per category.
Some years ago, the author and a colleague found (while working with a
quick method for scenario planning) that it was helpful to divide an issue
up into categories, assign a ﬂipchart to each category, and quickly move
people around the categories. We referred to this approach as ‘musical
ﬂipcharts’ and wrote about it as follows:

A ﬂipchart is assigned to each category […] and a ‘scribe’ appointed to
take notes on each ﬂipchart. The scribe stays with the chart; others move
around. We tend to separate people into several small groups, moving them
along after ﬁve minutes. This ensures that every person has a chance to
consider each item, thereby pooling all the knowledge of the group on each
issue (although of course if someone ﬁnds an issue particularly compelling
or dull, we would not stop them from staying or moving on in more or less
time). Since the group’s knowledge is displayed on the ﬂipcharts, each
mini-group simply adds to the previous groups’ work and ideas. In [around
half an hour], we would expect to ﬁll at least one ﬂipchart sheet for each
issue. While completing the ﬁrst few issues, the mini-groups are often
rather sluggish and slow to get started; towards the end, they can hardly be
torn away from their ﬂipcharts when the time comes to move, and ideas are
ﬂowing very freely. We have found the use of acoustic signals (bells or
similar) helpful to move the groups between ﬂipcharts, as they become very
absorbed in their topic. The last ‘round’ is used not to elicit any further
information, but to pull together what has so far been collected by the
previous groups, helping the scribe to prepare for the next step.

(Matzdorf and Ramage, 1999, p. 31)

85

Part 2 – Planning for an uncertain future

3 Developing mini-scenarios: The ﬁrst step is to move from driving forces
to choosing which scenarios to develop further. A typical way of doing
this is to produce fairly quickly a set of ‘mini-scenarios’, roughly between
six and eight, that illustrate aspects of the various driving forces. These do
not need to be detailed descriptions – a title or a sentence is usually
sufﬁcient – but they need to be sufﬁciently clear that they can be
developed further. It is important that the mini-scenarios ﬂow from the
driving forces, reﬂecting the different trends described in them, and that
between them they cover a wide range of the driving forces.

4 Building scenarios: These mini-scenarios can then be grouped into

between two and four scenarios that cover all the relevant topics. These
scenarios then need to be read carefully to make sure that they cover all
the relevant issues and trends, and that each is internally consistent and
coherent. The last step is ﬂeshing out the scenarios in more detail, and
expressing them in a form that will describe to others the world that you
envisage under the scenario (say in 15 years from now), and the way in
which that world was reached. Typically, this will involve writing some
kind of ‘story’, which might be simply a description or might take a more
creative form, although in a workshop setting it involves a presentation.
Davis (1998) lists some requirements for good scenarios:

. They should be built from the present and recognisable to the user. Each

scenario should resonate with signals in the present.

. They should not be easily dismissed by those who will use them.

Plausibility is in the ‘eye of the beholder,’ and each scenario will have
its adherents. However, users need to accept the plausibility of each
scenario if they are to gain from their use.
It is only when scenarios genuinely challenge a user’s mental map that
the possibility of learning exists.
For scenarios to be of direct use, they must imply direct consequences
for the users’ decisions.

.

.

(Davis, 1998, pp. 4-5)

86

Part 2 – Planning for an uncertain future

Box 2.6 shows an example of this method in use.

Box 2.6: Stages of scenario planning in use

Neill and Richards PLC is a (ﬁctional) medium-sized organisation,
based in the West Midlands of England, which focuses on the design
and manufacture of healthcare technologies for individual use, both at
home and in hospitals. They began by making blood sugar testing kits
for diabetics, and gradually expanded to a variety of testing and
monitoring kits. Most of their products have been sold in the past
through public health systems (such as the National Health Service in
the UK), across the whole of Europe. They are considering moving both
into the consumer market and into other parts of the world, but they are
also aware of external pressures especially from the entry of consumer
technology companies into health monitoring.

The company has commissioned a scenario planning exercise to look at
its external environment, using the Story-Driven Scenario Planning
approach, and this box brieﬂy describes the outcomes. It is led by
external consultants who have drawn together 30 key stakeholders from
across the company for a two-day workshop in autumn 2023 to generate
the scenarios which will be used later.

Focus
The senior management of Neill and Richards has agreed with the
consultants that their focus needs to be: ‘to consider the external
environment of the company in the light of technological and political
changes’. Because this is a fast-moving area, the timescale of the
scenarios will be just over 15 years, looking at the world in 2040.

Driving Forces
Using the musical ﬂipcharts method with seven groups based around the
STEEPLE categories, the group came up with the following driving
forces:

. Socio-cultural: People are living much longer; greater mobility

leading to less family support for older people; rise of the ‘worried
well’.

. Technological: Increases in 3D printing; inexorable rise of mobile
devices, increasingly becoming wearable; health monitoring being
built into mobile devices; gradual merger between consumer and
health-oriented devices.

. Economic: healthcare products more expensive; uncertainty of

economic recovery; uncertain state of the world economy; rise of
China and India as global economic power centres.

. Environmental: growing awareness of environmental cost of

technology.

. Political: problematic support for the NHS in the UK from a variety
of parties; uncertain relationship between the UK and European

87

Part 2 – Planning for an uncertain future

Union as a result of Brexit; political instability in a variety of parts
of the world.

. Legal: regulation around health monitoring uncertain.
. Ethical: concerns growing around technological monitoring of health.
Building scenarios
Following the development of the driving forces, a brainstorming
process led to seven mini-scenarios, each forming a potential nugget for
a more developed scenario.

1 Individual (computerised) personal healthcare assistants become

technologically possible.

2 All healthcare systems privatised.
3 European Union splinters and access to European markets much

harder.

4 Growing rise of China and India creates massive new healthcare

markets.

5 Healthcare monitoring can be 3D-printed at home for next-to-

nothing.

6 Mobile and wearable devices banned due to their environmental

costs.

7 Monitoring technologies become socially unacceptable.

The above seven mini-scenarios were combined into three (the ﬁrst
draws on mini-scenarios 3 and 4, the second on mini-scenarios 1, 2 and
5; the third on mini-scenarios 6 and 7). They are only described brieﬂy
here but could be developed in great detail, as was done with Shell’s
two scenarios:

1 The Worried Well in Asia: Europe never really recovers from the
ﬁnancial crash and bank bailout, and this is worsened by Brexit,
COVID-19 and the Russian invasion of Ukraine. North America,
meanwhile, has been sidelined as it becomes more socially
conservative and inward-looking. The main economic engines for
growth are in Asia, especially centred round India and China but also
taking in other countries. There is a massive rise in the middle class
in Asia, who work hard and are very concerned about their health
(especially in China where family sizes are small). The market for
healthcare technologies ﬂatlines in Europe and North America, but is
massively on the rise in Asia. There are huge opportunities for
European companies with technological expertise that are willing to
be ﬂexible and meet the needs of the Asian market.

2 Personal Robots for All: Eventually, Europe recovered from the

ﬁnancial crisis, but it required radical shrinking of most states. The
healthcare systems in the UK and most other European nations were
privatised, with all citizens dependent on private insurance. Around
this time, engineers in Japan and the USA were able to develop a
new generation of ‘personal robots’ – devices with rudimentary
artiﬁcial intelligence able to cater to the personal physical needs of

88

Part 2 – Planning for an uncertain future

the growing elderly population. This turned out to be signiﬁcantly
cheaper than most healthcare systems based on human input, so that
the new health insurance companies were largely able to fund these
devices. Most families ended up with at least one such device
catering to their healthcare needs.

3 Back to the GP: The oil crisis of 2027, when peak oil was ﬁnally
declared and the Saudi economy went bankrupt, led to a mass
reconsideration of environmental issues. Few people physically
travelled further than 20 miles for anything. Environmental concerns
and a deep public suspicion of technological surveillance made
mobile devices almost entirely socially unacceptable. Healthcare
shifted back to local provision, largely conducted by general
practitioners with more limited technologies available (beyond the
ubiquitous use of holographic video communication). There was little
appetite for advanced monitoring of health, but considerable need for
communication with GPs and for more traditional monitoring
devices.

As with all scenarios, any of these could occur, and in practice none of
them will happen in the pure form described above. But they form an
important part of the strategic analysis for an organisation such as Neill
and Richards.

Activity 2.4 (exploratory)

1 hour
Consider the situation at City Harvest, as described in Box 2.5. Conduct a
short scenario planning exercise using Story-Driven Scenario Planning as
described in the previous pages, including the four stages of clarifying the
focus and timescale, analysing driving forces, developing mini-scenarios, and
building scenarios.

2.4.2 Method 2: Key Uncertainties
An alternative, slightly more systematic, method, is the identiﬁcation of two
key uncertainties – the most crucial driving forces (or combinations of
driving forces) which can go in one direction or another. By identifying these
two key uncertainties as continuous scales, and making them axes of a two-
dimensional graph, we can readily form four possible scenarios (see
Figure 2.3 for an example). If it is possible to summarise the driving forces
within two main areas, this can be a powerful and straightforward way of
identifying possible scenarios. For some scenario planners, this is the
preferred method for the transition from the analysing driving forces stage to
the building scenarios stage.

89

Part 2 – Planning for an uncertain future

For the key uncertainties method there are typically four main stages, the ﬁrst
two being the same as those for Method 1 (Story-Driven Scenario Planning):

1 Clarifying the focus and timescale: see notes on this stage under

Method 1.

2 Analysing driving forces: again, see notes on this stage under Method 1.
3 Selecting key uncertainties: select the two key driving forces (possibly by
combining some of those discovered in stage 1) as the key uncertainties.
Identify the two main states for each of these driving forces – typically
these will be the two ends of some kind of scale. For example, if one of
your key driving forces is ‘How we take decisions’ (as you’ll see in
Box 2.7 below), then the two ends of the scale could be Centralised and
Distributed.
In some cases these driving forces could be considered variables with
numerical values – for example, if you are interested in economic factors,
the Gross Domestic Product of the UK economy – but they may also be
something more abstract or qualitative. Care does need to be taken with
this method so as not to be too mechanistic, nor to push the driving forces
into categories where they do not belong simply to get a neat set of axes.
Having selected the key uncertainties, create a two-by-two matrix with the
two key uncertainties as the axes (as in Figure 2.3, below), and give short
names to the four scenarios that arise within the four boxes of the matrix.

4 Building short scenarios: create four scenarios for the world under the

four quadrants of the matrix. This stage will again broadly be similar in
style to the equivalent stage of Method 1.

Box 2.7 contains a public sector example of the key uncertainties method in
use. In the spring and summer of 2020, during the early months of the
COVID-19 pandemic, several different groups and organisations created
scenarios around the impact of COVID-19 upon society in general, and
public sector organisations in particular. The box shows one such example.

You may notice that the timescales are rather shorter in this example (mostly
2–5 years) than is suggested by the advice for scenario planning given
elsewhere in the module. This was particularly due to COVID-19 – as
scenario experts at Oxford University observed, COVID-19 meant that ‘the
longer term ha[d] shrunk; and scenarios [could] be done with shorter time
horizons’ (Ramirez and Lang, 2020). This is not appropriate in general, but
was useful in the circumstances of a global pandemic.

One further issue in building scenarios, applicable to both methods, concerns
the ways in which they are used. In some of the sample scenarios in this
module, you will see sections labelled ‘Taking action’ or something similar
(there is one in Box 2.7). This is an important question in any scenario-
building exercise, and what distinguishes scenario generation from a wider
process of scenario planning.

One key outcome from any scenario exercise will be the learning about future
possibilities, and challenging of assumptions, which occurs for the
participants in the process. It is this learning – the changes in the way

90

Part 2 – Planning for an uncertain future

participants see the world – that is the most valuable part of the scenario
exercise. As Peter Schwartz has said:

The test of good scenarios is not getting the future right. […] The real test
of a good scenario is: Did I make better choices as a result of having
looked at and understood both my own environment better and the
consequences of my actions?

(Peter Schwartz, quoted by Curry, 2007, p. 339)

A second outcome is the learning about future possibilities that occurs for
others within the organisation (or beyond it) when the scenarios are
disseminated, perhaps in some kind of report.

A third outcome is to feed explicitly into a strategic planning process – to
help the organisation make decisions about what it needs to do to be ready
for the different futures presented in the scenarios. A variant of this might be
that one scenario ends up being seen as more desirable than another, leading
part of the process being to inﬂuence the external environment towards that
scenario coming about, while being ready for any of the scenarios to occur.

Box 2.7: Our COVID Future: the long crisis scenarios

In the spring of 2020, Local Trust, a UK charity which funds local
community projects using money from the National Lottery,
commissioned a scenario planning exercise on the impact of the
COVID-19 pandemic. Given that their work is around local community,
the focus of the scenarios was described in a series of questions written
by James Goodman, their director of partnerships:

Local Trust believes there needs to be a structural change in
our economy, society and politics, to shift power and control to
local communities. Will that happen in the current crisis? Or
will the local be squeezed out? These scenarios look for
signals in the noise. We don’t agree with everything that’s in
here, but that’s not the point. These stories challenge our
thinking and help us discover how we can work differently.

(Goodman, in Evans and Steven, 2020, p. 3)

The scenarios were created for Local Trust by two British academics
and policy experts, Alex Evans and David Steven, who have worked in
a series of international policy settings and at New York University.
They had previously written about what they called ‘the long crisis of
globalisation – a turbulent period in which risks proliferate across
borders as rapidly as opportunities’ (Evans and Steven, 2020, p. 6), and
at the time of writing were working with others in an organisation called
the Long Crisis Network, which is credited with the authorship of the
report.

This scenario exercise falls within the expert-driven category that we
identiﬁed above. Rather than working with stakeholder groups to

91

Part 2 – Planning for an uncertain future

generate the scenarios, Evans and Steven started with an analysis of risk
factors from a previous report they had written, and also drew upon
conversations, interviews and written contributions from a series of
other experts thinking and writing about COVID-19 and globalisation in
spring 2020. They detail these contributions in the Acknowledgements
section of their report (which is linked from the module website if you
are interested).

The scenarios are not framed in terms of a single timescale, but identify
three ‘layers’ relating to COVID-19, each with different timescales:

.

.

.

a public health emergency that will continue for two years or more;
an economic disaster that will take at least ﬁve years to unfold;
a crisis of polarisation and insecurity that could take a generation to
play out fully.

(Evans and Steven, 2020, p. 6)

For each of these three layers, they identify what was known and what
was unknown at the time of the report.

The scenarios are presented using the key uncertainties method, with
two axes labelled as ‘drivers of change’ leading to four quadrants of a
two-by-two matrix with one scenario in each quadrant.

Selecting key uncertainties
Rather than using STEEPLE to generate initial driving forces, the two
key uncertainties (or drivers of change) shown in the report are based on
‘how’ questions:

1 How we see ourselves:

◦

◦

polarised: scared and anxious, angry and blaming others,
tunnel vision and short-termist, divergent views of the future
collective: looking outward, thinking of the future,
identifying and solving problems, learning from mistakes.

2 How we take decisions:

◦

◦

centralised: elites take the decisions, charismatic leadership,
lobbyists inﬂuence policy, people feel powerless and
disconnected
distributed: decision-making is by consensus, transformative
leadership, partnerships and participation, growing sense of
agency and belonging.

The four scenarios arising from these key uncertainties were entitled:
Big Mother, Winning Ugly, Rise of the Oligarchs and Fragile Resilient.
Their relation to the key uncertainties (along with a few words
summarising their characters as scenarios) can be seen in Figure 2.3.

92

Part 2 – Planning for an uncertain future

Collective

Big Mother:
generous, statist,
uninventive

Winning Ugly:
learning, function
not form, emergent

Centralised

Distributed

Rise of the
Oligarchs: divided,
xenophobic, corrupt

Fragile Resilient:
innovative, chaotic,
vulnerable

Polarised

Figure 2.3 Our COVID Future – the Long Crisis scenarios (adapted from Evans
and Steven, 2020)

Details of the four scenarios
. Big Mother: Governments have taken unprecedented powers to

tackle the public health emergency, with publics calling on them to
act more aggressively. Bailout packages have been more generous
and innovative than in 2008, with a high proportion of workers
and businesses now dependent on state support.
Government is back and it’s here to help. Politicians are expected
to deliver: a vaccine, an income, a future. To keep the lights on
both literally and ﬁguratively. People are told what to do by a
state that promises to look after them. Lockdowns are sporadic but
behaviour is constantly monitored and regulated.
The social contract is clear, but the strain is showing. The
government has plenty of answers, but seldom the most
imaginative ones. And it continually increases expectations while
elbowing others aside. When it gets it wrong, people feel betrayed
and anger surges.

. Winning Ugly: In the health sector, technological and scientiﬁc

innovation has moved at an exceptionally fast pace. Bailouts have
been more people-centred and creative than might have been
expected. A surge of volunteering and community activism shows
broadening participation in the pandemic response.
No-one said it was going to be easy. No obvious sign the battle
was won. No heroic moment of victory. Instead, an extended –
and at times seemingly endless – attack on the pandemic. One that
started in hospitals, moved into communities, and was driven by a
collective willingness to learn and adapt.
The economic trauma was profound, but institutions held. Not just
the organisations, but our ability to organise. To draw on reserves
of community cohesion. To replace failed leaders with a new

93

Part 2 – Planning for an uncertain future

generation. At ﬁrst, we just threw money at the problem. But over
time, this created space for smarter approaches to proliferate – and
for the emergence of a narrative that promotes collective action to
tackle other urgent risks such as climate change.

. Rise of the Oligarchs: Most countries have taken a highly

centralised approach to COVID-19 and ‘big men’ politicians have
played a key role. COVID-19 has created new inequalities and
lockdowns have increased polarisation. Geopolitical tensions are
increasing (especially between China and the US).
Like a dark phoenix from the ashes, the winner from COVID-19’s
crises is a government of the few. It’s inequitable, illiberal,
corrupt, opaque – and ineffective. No-one thought that it would be
this bad: the spread of the pandemic, the economic pain, or the
damage to people’s lives. But through it all, the powerful – in
politics, business, and the media – protect their own.
People are angry, but also scared and compliant. Stranded between
apathy and the latest conspiracy theory. Risk takers live at the
bottom, not the top of the pile. International co-operation withers
and geopolitical tensions proliferate. In a world of closed borders,
racism and xenophobia ﬂourish.

. Fragile Resilient: Public health and economic impacts have been
consistently greater than expected, with policymakers struggling to
keep up. A vaccine or herd immunity is a long way off and the
economic pain is only just beginning. There are high risks of
successive waves of crisis on all three layers (health, economic,
polarisation and insecurity).
Repeated waves of COVID-19 – and aﬁ nancial crash, food
system crash, climate crash, energy crash, trade crash – overwhelm
the capacity of a state that ﬁnds itself in the latter, more frenetic,
stages of a game of Tetris.
Amid intensifying levels of drama and chaos, national politics
increasingly becomes a competition for what is left of the spoils.
Bubbles inﬂate and burst. Fortunes are made – and lost. At the
grassroots, there’s a surge of innovation as communities fend for
themselves. Like Italian towns facing the Plague – or developing
countries today – people are fantastically inventive when making
the best of a bad job.

Taking action: Towards a Larger Us
The scenarios present actions that can be taken in each of them, at the
levels of local, national and global. Only the summary paragraphs for
each level is shown here, not the actions for each scenario.

. Local: Different strategies will be needed in different futures,

building on what is going right and confronting what is going wrong.
Locally, priorities may range from protecting communities from
economic and political failure to enabling them to play the fullest
role in building a better future.

94

Part 2 – Planning for an uncertain future

. National: The pandemic has placed governments and other national
decision makers under the microscope – resulting in a mix of panic,
error, and innovative action. As leaders dig in for the long haul, the
priority will be to create pressure, incentives, and space to act in the
public interest.

. Global: COVID-19 respects no borders. It demands that countries act
in concert to defeat the virus, rebuild economies, protect the systems
on which we depend, and create hope for a better future. But
different levels and types of co-operation will be feasible in different
futures.

(extracts from Evans and Steven, 2020)

Activity 2.5 (exploratory)

1 hour
As with Activity 2.4, consider the organisation (City Harvest) described in
Box 2.5. Conduct a short scenario planning exercise using the key
uncertainties method described above. Having established the focus and
timescale, you should generate a set of driving forces using STEEPLE, then
identify two key uncertainties from these forces, then build four short
scenarios which map on to four quadrants of a two-by-two matrix using these
key uncertainties.

To close this section and draw out the methods found here, Box 2.8
summarises the key stages of the two scenario methods outlined above.

Box 2.8: Key stages of scenario planning methods

Method 1: Story-Driven Scenario Planning
1 Clarify the focus and timescale of the scenario exercise.
2 Analyse driving forces using a set of categories such as STEEPLE –
either through expert analysis or through a participatory method such
as ‘musical ﬂipcharts’.

3 Brainstorm a set of mini-scenarios deriving from the driving forces.
4 Build full scenarios by combining the mini-scenarios and then

outlining them in greater depth.

Method 2: Key Uncertainties
1 Clarify the focus and timescale of the scenario exercise.
2 Analyse driving forces using a set of categories such as STEEPLE –
either through expert analysis or through a participatory method such
as ‘musical ﬂipcharts’.

95

Part 2 – Planning for an uncertain future

3 Select two key driving forces (or combinations of these) as the key
uncertainties. Identify the two main states for each of these key
uncertainties, and create a two-by-two matrix with the two key
uncertainties as the axes.

4 Create four scenarios for the world for each of the four quadrants of

the matrix.

2.5 Scenario planning within the context of IT
systems
Although there has been very little mention of IT systems in the previous
discussion of scenario planning, most of the methods apply with little
modiﬁcation to IT systems scenario planning exercises. One important
difference concerns the scope of the exercise. Scenario planning is essentially
a study of the changing environment of the system that forms an
organisation, and in most cases, the IT system is a subsystem of the wider
organisational system. This means that other aspects of the organisation are
environmental factors to that IT system, just as the wider driving forces (from
outside the organisation) are environmental factors to the organisation as a
whole.

When the organisation is considered as a whole (including the IT system), we
see the various categories of driving forces – the STEEPLE categories
(Sociocultural, Technological, Economic, Environmental, Political, Legal,
Ethical) acting upon the organisation. Thus, just as the STEEPLE driving
forces act upon the organisation, and it in turn acts upon them but does not
control them, so the wider organisational factors act upon the IT system and
the IT system acts upon those factors but does not control them.

It has to be said that this view of the relationship between IT systems and
organisations omits a lot of interconnections and feedback loops between IT
strategy and organisational strategy. Nonetheless, when considering IT
systems scenarios, it is important to bear in mind that the future strategy,
staff, processes and structures of the organisation might form some of the
issues that need to be modelled as scenarios.

A contrasting view is that among the key driving forces in any scenario
planning exercise, technological factors always play an important part. This
reﬂects the impact that technology of all kinds – not just information
technology – has on the future development of organisations. Given the
importance of technology as one of the components of any IT system,
inevitably this means that technological trends themselves have an impact
upon the general organisation scenarios.

One further general point needs to be made about scenario work in IT
systems. The term ‘scenario’ is used quite widely in a number ofﬁ elds of
computing, especially software engineering and human–computer interaction.
In these ﬁelds it refers to various circumstances of the ways in which users

96

Part 2 – Planning for an uncertain future

interact with software that make a difference to the way that software should
be designed. These approaches are quite different from scenario planning,
although they are all concerned to some extent with telling stories, and each
emphasises the multiplicity of different perspectives (Go and Carroll, 2004).

Even though methods for scenario planning of IT systems differ little from
those associated with general business scenario planning, it is still useful to
look at some examples from IT. Perhaps the prime example is the British
computer company ICL (International Computers Limited), now part of
Fujitsu but in the 1970s and 1980s one of the UK’s most successful computer
manufacturers. In the early 1990s the company conducted a series of scenario
planning exercises, using Shell-type methods, and this has been written about
by Gill Ringland, who led the project and has written extensively on the topic
of scenario planning, notably in her book Scenario Planning – Managing for
the Future (Ringland, 2006), which the article in the activity draws upon.
Although it might seem strange to read about scenarios on IT systems that
were published in 2003, the article is still useful today.

Activity 2.6 (self-assessment)

1 hour
Read the article by Ringland (2003), which you will ﬁnd in the Block 3
Part 2 resources section of the module website.

How does ICL’s use of scenarios compare to the various methods you have
seen earlier? Which of the scenarios do you think resembles the computer
industry as it actually developed?

We will look at two further examples of scenario use in IT systems that are
more recent than the ICL scenarios, both using the key uncertainties method.

The ﬁrst example is a study by science educators around the possible ways of
using mobile learning (m-learning), deﬁned as ‘the process of learning
mediated by handheld devices such as smartphones, tablet computers and
game consoles’ (Burden and Kearney, 2016, p. 287) within education at all
levels. Their goal was to explore the question: ‘What possible futures might
present themselves to science educators interested in harnessing the potential
of mobile technologies?’ (Burden and Kearney, 2016, p. 288). Note that the
study was carried out several years before COVID-19 led to a considerable
shift to online and blended learning among previously face-to-face settings
(even after the COVID-19 lockdowns).

The authors conducted detailed survey research with 54 teachers – half in
higher education, the rest at school level – mostly in Australia or Europe.
They reported that ‘the majority of m-learning tasks described by the 54
teacher participants were highly social and collaborative in nature, involving
a high level of face-to-face conversation at the device, usually in the
classroom’ (Burden and Kearney, 2016, p. 295). In a version of the key
uncertainties method, the survey research was used to identify driving forces

97

Part 2 – Planning for an uncertain future

which were then used in a two-by-two matrix to shape the scenarios. These
can be found in Box 2.9 and summarised in Figure 2.4.

Note that the scenarios developed are described in Box 2.9 as ‘written with a
positive perspective’, while in this module we have suggested that scenarios
should be a blend of positive and negative features.

Networked (sharing in live, virtual networks)

Quadrant C
Connective /
directed

s
s
e
n
d
e
t
c
e
n
n
o
C

Quadrant D
Participative

Agency / student autonomy

Quadrant A
Guided / scaffolded

Quadrant B
Simulatory /
autonomous

S
t
u
d
e
n
t
-
l
e
d
a
n
d
d
e
t
e
r
m
n
e
d

i

)
e
c
a
p
t
e
s

i

,
s
e
c
o
h
c
o
n
(

d
e
s
o
p
m

i

r
e
h
c
a
e
T

Solitary / isolated (working alone)

Figure 2.4 Four scenarios for mobile learning in science (from Burden and
Kearney, 2016, p. 300)

Box 2.9: Future scenarios for Mobile Science Learning

A critical stage in the production of scenarios involves the identiﬁcation
of key trends or ‘drivers’, which shape the development of society such
as environmental change, social inequality, demographic shifts and
technology itself, the last of which is a broad focus of this paper.
Although identiﬁed trends are recognised as important drivers of change,
it is only those deﬁned as ‘unpredictable’ which are selected since these

98

Part 2 – Planning for an uncertain future

serve as vectors inviting debate, discussion, difference and ultimately
polarities. Technology meets this criterion well as it generates
considerable debate and difference at both the micro and macro level.

However, this study is not primarily driven by an exploration of
technology per se but rather by a socio-cultural investigation of the
signature pedagogical affordances associated with the use of mobile
technologies and their particular relevance for science educators in the
future. Therefore, our ﬁrst task was to examine our model to identify
potential ‘drivers’ within the ﬁeld of mobile learning. […]

We therefore followed the recommendations in the literature on scenario
planning to scrutinise these positions to identify those drivers considered
to be amongst the most impactful and unpredictable. All of them are
capable of generating dichotomous positions […] but in light of our
previously discussed survey data, we deemed two themes of
collaborative networking and student agency as more unpredictable in
the sense that the science educational community is divided or unclear
about how these constructs/drivers might be applied in practice.

[…]

We identiﬁed collaborative networking (or ‘connectedness’) as one of
the potential drivers to adopt in this exercise, since it offered
considerable scope for alternative practices and thinking in science
education around virtual and multiple conversations and collaborative
data collection and exchange.

We selected student autonomy/agency as the second potential driver or
variable, since this had also emerged as a problematic area in the
survey. The 54 survey participants reported surprisingly low levels of
student autonomy and choice (goals, content, etc.) given the dominant
discourse in the literature which portray digital technologies as vehicles
for greater learner agency.

[…]

The scenarios
On the basis of the research literature, our own theoretical framework
and empirical data presented in previous sections, we present four
futures scenarios in the form of persuasive narratives or stories. The
scenarios are deliberately written in a compelling and persuasive
fashion, and all four are written with a positive perspective since
scenario planning is designed to encourage consideration of alternatives
that might not otherwise appeal. […]

In this section, we describe the four narrative scenarios (see Figure 2.4),
which present alternative possible futures for mobile technology-
enhanced science learning. Each quadrant is labelled according to the
agency and collaborative networking (or ‘connectedness’)
characteristics: quadrant A: guided and scaffolded; quadrant B:
simulatory and autonomous; quadrant C: connective and directed; and
quadrant D: participative.

99

Part 2 – Planning for an uncertain future

[…]

Scenario A: Guided and Scaffolded Science Learning
In this scenario, mobile technologies are used by science educators to
underpin and reinforce traditional practices of science education (i.e. the
status quo) where science is taught as a formal, curriculum-based
subject and technology is employed to make teaching and learning more
effective and efﬁcient. The main emphasis lies with the transmission of
accepted scientiﬁc principles and knowledge, and this is undertaken
most effectively through teacher-directed access to information sources
such as YouTube video demonstrations, podcasts, e-textbooks and the
use of ‘skill and drill’ apps such as science quiz apps. Mobile devices
are used extensively in the classroom and laboratory to free students
from traditional note-taking and drawing exercises, and these are
replaced by camera capture and digital annotation tools, such as stand-
alone mind-maps, electronic worksheets and e-books. Teachers control
the content, objective and pace of lessons, including tightly scaffolded,
recipe-style science investigations. […] In class, students are encouraged
to use their mobile device to capture and annotate notes made by the
teacher on the interactive whiteboard or examples of experiments or
demonstrations which cannot be undertaken by the students for reasons
of efﬁciencies of time or health and safety.

[…]

Scenario B: Simulatory and Autonomous Science Learning
In this scenario, mobile technologies are appropriated by science
educators to mediate autonomous but largely isolated learning by
students whereby the device acts as an ‘intellectual partner’ and
cognitive tool for the students. Students typically use mobile
technologies to mediate relevant science processes and tasks, depicting a
simulation model of authenticity, making use of class-based
investigations and ﬁeldwork as a ‘practice ﬁeld’, albeit separate from a
real science community. Use of the mobile device gives students the
ability to control tools to collect data, manipulate a range of scientiﬁc
variables and make predictions, thus encouraging them to think and
behave like real scientists. […] Rather than tightly scaffolding the
learning of science to the entire class, the teacher allows students to use
their mobile device to explore simulations and other resources […] In
this way, students work more at their own pace on a challenging, self-
selected problem or issue. […] Students typically work in small groups
to tackle a science-based problem and are encouraged to use a range of
generic media capture and editing tools […] Assessment is based on
these authentic representations rather than simple tests.

Scenario C: Connective and Directed Science Learning
In this scenario, teachers use mobile technologies to liberate students
from the physical boundaries of the formal classroom, enabling them to
work and interact with peers and experts beyond the classroom to
articulate their ideas and negotiate shared meanings. […] The teacher

100

Part 2 – Planning for an uncertain future

uses the technology as a starter to carefully scaffold and monitor
realistic explorations, often based beyond the classroom. Students use
their devices to collect data and to analyse it, often in teacher-selected
contexts and under the careful guidance of the teacher or an external
expert. Students behave more like scientists to the extent that they are
working collaboratively, undertaking problem-solving activities and real-
time data collection and exercises, such as the use of Bluetooth-enabled
data collection tools to undertake a beach survey. Data and ﬁndings are
shared with peers and teachers in externally controlled cloud-based
documents. […] Although collected data may be shared beyond the
class, it does not contribute to any wider science community projects.
Most of the activities undertaken are likely to be highly scaffolded
inquiry projects, or tightly controlled multi-player games or simulations,
making greater use of the networking features of mobiles and the ability
to tap into real-time data. Assessment is more collaborative in nature
with more emphasis on peer assessment.

Scenario D: Participatory Science Learning
In this scenario, mobile technologies are a dynamic and reciprocal
conduit to data, expertise and a community of real scientists that enable
students to think and behave as part of the real scientiﬁc community
[…] This is not simulated and the students are seen to have equal status
and act as co-constructors of knowledge with their teachers and
members of the scientiﬁc community […] Science tasks are likely to be
multidisciplinary in nature, mirroring the complex, interdisciplinary
processes of real-life science. Indeed existing formal school curricula
may not be recognisable in this scenario. Students are immersed in real
scientiﬁc communities and areas of interest (e.g. a nature reserve) where
they undertake an extended in situ work experience using the technology
to share, analyse and interpret their own and others’ data and maintain
contacts with their peers and with experts in the real world, who
validate and credential the learning. […] Students in this scenario use
networking tools and social media apps like Facebook, Instagram and
Twitter to pose questions and share their predictions and interpretations
with peers […] and with other scientiﬁc experts. Connective, augmented
reality apps, multi-player games and immersive learning tools enable
students to understand complex ideas and concepts at their own pace
and in many cases these act to mediate student’s learning, independently
of the teacher.

(extracts from Burden and Kearney, 2016, pp. 295–302)

Our ﬁnal set of scenarios on IT systems explore the future of public libraries,
which are large organisations which could be thought of as IT systems in
their own right, insofar as they combine large amounts of information (in
books and other resources), with tools to access, catalogue and support this
information, and organisations to support those processes. In the United
States, public libraries are often independent entities of very long standing.
The library which produced these scenarios, in Reading, Pennsylvania, was

101

Part 2 – Planning for an uncertain future

founded in 1763 and is the sixth-oldest in the United States, having gone
through many different forms. Reading is a ‘rust belt’ (post-industrial) city of
roughly 95,000 people, situated on the River Schuylkill, an hour from the
state capital Philadelphia. The goal of the scenario planning exercise was to
‘navigate the turbulence and deep uncertainty of the early 2020s, including
the COVID-19 pandemic, the ongoing strife of U.S. domestic politics, and a
moment of institutional transition as one Executive Director departed and a
new one assumed the role’ (Adams, Finch and Gamble, 2023, p. 666).

The scenarios were created by the library’s strategic planning committee, led
by the outgoing executive director and an academic from the University of
Oxford with experience in scenario planning, Dr Matthew Finch. The
scenario processes took place over a six-month period in 2021 (somewhat
lengthened by the COVID-19 pandemic), and looked at scenarios running to
the year 2040, ‘exploring how the library’s ecosystem might come to be
comprised of different actors, relationships, and values in futures
characterized by differing degrees of cooperation or fragmentation in civic
life, and differences in the degree to which that life remained ‘in-person,’ or
migrated to fully digital online spaces’ (Adams, Finch and Gamble, 2023,
p. 671).

The process and outcomes for creating the scenarios are described in
Box 2.10.

Box 2.10: Scenarios for Reading Public Library

A team of key library staff and the chair of the board’s Strategic
Planning Committee spent many hours focusing on their goals.
Committee members created an online mural map of the library’s
business environment, including ﬂows of value to and from the library,
and uncertainties which might affect the environment of the future […]
The map was dynamic, which allowed the committee members to easily
make additions and changes. This process gave participants a clear
understanding of the extensive web of collaboration, service, and
transaction which shapes library work at every level from customer to
community to state and federal mandates.

The process of translating this dynamic mural map to arrive at the ﬁnal
scenarios […] began by breaking into small discussion groups. These
small groups examined the multitude of current challenges facing RPL
[Reading Public Library] by charting daily interactions and experiences,
and determining if these could affect the future of the library. It became
clear that both local and national events affect RPL on a practical and
personal level. The groups discussed:

. The opioid crisis which leads to addiction, hopelessness, and turf

gang violence

. The wealth gap in Berks County [Reading’s local government area],

lack of education, and access to employment

102

Part 2 – Planning for an uncertain future

. Social media and the power of ‘inﬂuencers’ while at the same time a
decline in traditional local news outlets in print, radio, and television
. Uneven access to health-care services with language barriers, lack of

transportation, and feeling unsafe to ask for help

. Divisive politics, who holds political power, political labels, and an

endless focus on reelection

. Social injustice and unrest which highlights segregation by

neighborhood

. Taxes, what they provide, and politicians’ reluctance to raise them
. Huge local, state, and national spending on the court system and
incarceration which limits funds for social institutions such as
libraries
Inertia – a Berks County specialty

.

Key uncertainties
Building on the work of the small groups, the planning committee
discussed, argued, and reﬁned the above and agreed on two key
uncertainties to structure the scenario set on an X- and Y-axis; two key
factors that could transform the library environment in the most
challenging and uncertain ways in the future. The factors selected were
the degree of Cooperation or Fragmentation in society and the degree to
which civic life was conducted in a Digital Space or in Physical
presence. The committee chose a time horizon of 2040 to best explore
the chosen factors. Twenty years into the future was far enough out to
explore how current dynamics may play out on their key uncertainties
and how their chosen scenarios could diverge as time moves forward. It
felt like a combination of science ﬁction, fantasy, and news headlines!
The committee divided into four ‘rooms,’ each taking a section of the
X- and Y-axis which was visible to all on the mural map, and ﬂeshing
out what each future might look like twenty years hence [see
Figure 2.5].

. Fragmented & Digital was labeled the Digital Wild West
. Cooperation & Digital was labeled Big Brother/Brave New World
. Cooperation and Physical was labeled Paris on the Schuylkill
. Fragmented and Physical was labeled Bunker Mentality
[…] As the committee envisioned life in Reading and Berks County,
Pennsylvania, in 2040, they decided that the power of fragmentation as
factor was so great, and played out so similarly in the scenarios
explored, that it was more useful to combine the Digital Wild West and
Bunker Mentality into one, thus identifying and creating three scenarios
[Life in the Clouds; The Wild Frontier; Paris on the Schuylkill].

Detailed scenarios
[…] The Life in the Clouds scenario imagined a future in which social
and economic life migrated almost entirely online in the next twenty
years. Privacy gave way to Big Data, but there were also new forms of
digital democracy and the recognition that American society could not

103

Part 2 – Planning for an uncertain future

survive without cooperation. RPL evolved into a ‘Public Informatics
Commission,’ regulating digital equity, and helping residents participate
fully in life online.

The second scenario, The Wild Frontier, saw a dramatic fragmentation
of civic life in which the basis for trust and dialog had all but
disintegrated. Residents retreated both online and ofﬂine into ‘bunkers’
deﬁned by shared common values and the exclusion of outsiders. This
scenario presented grave challenges to the notion of library neutrality
and the library’s dependence on local, county, and state tax income.

The ﬁnal scenario, Paris on the Schuylkill, imagined a new ﬂowering of
civil society. In this world, people pulled together for the sake of their
children’s futures. Universal Basic Income and growth in higher
education turned Reading into a city of artists and scholars, a sought-
after destination for arts and culture. The RPL of this world was an
integral partner with local universities and served as an incubator of the
arts and innovation.

Application of scenarios
The committee used the three scenarios to examine RPL’s situation
in 2021. What signs were there that any of these futures might emerge?
What other possibilities had this work exposed? How would people in
any of these scenarios look back at the choices made today? There were
exciting, impromptu discussions in library break rooms, hallways, board
meetings, and staff meetings to ensure everyone was part of the process.
Additionally, each person on the committee took their work to the
community partners they identiﬁed on the original mural map for their
perspective on Berks County’s future. The process forced everyone to
look up from the day-to-day and question their own assumptions. After
gathering input, it was time to deﬁne RPL’s plans for the future by
developing ‘railroad tracks,’ an appropriate label to use for the
birthplace of the Reading Railroad.

[…]

After the strategic planning process is complete, the real challenge of
how to translate that plan into action begins. During the planning
process, four tracks were identiﬁed as goals to focus on Co-designed
Programs, Intentional Partnerships, Library Staff Reﬂects the
Community, and Create Digital Opportunities.

Each of these four tracks were developed to be relevant in moving the
library forward regardless of which scenario comes to pass. This is why
one way to approach implementing the strategic plan would be to focus
only on the resulting tracks and goals of the plan – treating those goals
in isolation from the rest of the strategic plan. While the library would
likely still proceed forward with an approach that focuses solely on the
tracks, any progress would not beneﬁt from the focus and context that
the scenarios provide.

104

Part 2 – Planning for an uncertain future

Civic life takes place in
physical spaces

‘Paris on the
Schuylkill’

Society is
cooperative

‘The Wild
Frontier’

Society is
fragmented

Civic life takes place in
digital spaces

‘Life in the
clouds’

Figure 2.5 The Reading Public Library scenarios (Adams, Finch and
Gamble, 2023, p .674)

(Source: extracts from Adams, Finch and Gamble, 2023, pp. 672–678)

We have seen three quite different examples of the use of scenario planning
in IT systems: the ICL use as part of strategic planning, the use of mobile
learning in science education, and the changing development of the Reading
Public Library in Pennsylvania, USA. They serve again to illustrate the
transience of scenarios, but conﬁrm that scenario planning can be used in
many different ways within IT systems.

Scenario planning is most useful as a form of readiness. Creating a set of
scenarios for the environment around your IT system allows you to have a
sense of the various possible ways in which the IT system might change in
the future, based on external pressures, and hence to enable the building of a
strategy which can deal with that change as it arises. And the process of
creating scenarios is as valuable as the outcome – it provides what you might
think of as a ‘mental gymnasium’, a space for people to try out new ideas,
and to increase their agility of mind.

Activity 2.7 (exploratory)

1 hour 30 minutes
Having seen the two main methods for scenario planning presented in this
Part (Story-Driven Scenario Planning method and the Key Uncertainties
method), and the examples of their use in IT systems, apply these to
generating a set of scenarios around an IT system of your acquaintance. This
should include at minimum:

.

.

a focus and timescales for the scenarios
a set of driving forces using the STEEPLE categories

105

Part 2 – Planning for an uncertain future

.

.

a list of potential scenarios, at least four, describing their features in a few
lines each
a more developed set describing two to four of the key scenarios (at least
half a page).

You will ﬁnd this activity useful as preparation for TMA 03.

2.6 IT strategy: combining forecasting and
uncertainty
Given the uncertainty of the future, how can we make IT systems ﬂexible
enough to be ready for future changes that might occur? This is a question
which has been considered by a number of authors and practitioners within
business and IT strategy.

Earl (1999, p. 164) argues that: ‘If every business is an information business,
perhaps it is unhelpful to think of a business strategy and an IT strategy.
Perhaps they should be one: an integrated information business strategy.’ This
combined strategy is often referred to as strategic alignment. This concept is
deﬁned in one article as arguing that the:

effective and efﬁcient utilisation of IT requires the alignment of IT and
business strategies. This reﬂects the view that business success depends on
the linkage of business strategy, IT strategy, organisational infrastructure
and processes, and IT infrastructure and processes.

(Burn and Szeto, 2000, pp. 197–198)

On the face of it, strategic alignment might seem an obvious goal – if IT
systems are a core component of the business (and they clearly are for most
organisations), surely the two forms of strategy will naturally be aligned? For
many technology-centric companies (e-commerce companies like Amazon
and eBay, for example) the IT strategy is the business strategy. Yet for many
organisations there is a very clear separation between the two. As Ciborra
(1997, p. 68) argues, ‘[W]hile strategic alignment may be close to a truism
conceptually, in the everyday business it is far from being implemented.’

Strategic alignment is largely something that organisations work towards,
rather than achieve as a ﬁnal outcome. Consequently, it is hard to deﬁne
exactly what it might mean for IT and business strategies to be aligned, and
success stories are hard to come by. One case study of successful alignment
in the literature is the publisher McGraw-Hill:

106

Part 2 – Planning for an uncertain future

McGraw-Hill is another example of an IT organization that understands its
business. At McGraw-Hill, custom publishing for the college textbook
marketplace is focused on materials compiled in their Primis application.
Primis lets college instructors create a customized textbook tailored to the
speciﬁc needs of a course. Developed under the direction of McGraw-Hill
editors, the Primis database contains core chapters and sections from
existing textbooks, journals, and articles. The professor selects and
determines the sequence of the material. Professors can also add their own
material and notes. The database of information and the supporting
technologies represent an IT-based business strategy. Primis facilitated
McGraw-Hill’s strategy of building a product tailored to speciﬁc
requirements. In the context of strategic alignment, there are important
considerations for integrating the infrastructure. The traditional ‘assembly
line’ processes for textbook publishing (acquisition, writing, editing,
manufacturing, selling, and distributing) have been replaced by processes
designed to take advantage of the opportunity to build a customized book
electronically and produce it on paper where needed. The IT infrastructure
identiﬁes standards, processes, and skills that support this new ‘book
building’ infrastructure for the college textbook business.

(Luftman, Papp and Brier, 1999, pp. 19–20)

However, failing to achieve such alignment is much more clearly
problematic. Sauer, Southon and Dampney (1997) examined the ‘ﬁt’ (a
synonym for alignment) between IT and business strategy at New South
Wales (NSW) Health, the public health service of the most populous
Australian state, and concluded:

Weak ﬁt is problematic in two ways. First, it may create competing
motivations for different people in different parts of the organization as
with the tension between strategy and structure at NSW Health. Second, in
the absence of a unifying theme or logic arising from tight ﬁt,
organizational players may be confused as to the appropriate decisions and
behaviours in respect to achieving existing operational performance targets.
Such confusion will be all the more problematic in relation to IS projects
since these constitute a change in the way the organization achieves
performance. Thus, a steering committee composed of business unit
managers may have a coordination role for a new cross-divisional system,
but within their business unit have responsibility only for that business. If
there is no divisional management decision about how beneﬁts and costs
will be shared and resources allocated under the new system, it is unlikely
that the steering committee will be able to give the IS project manager
appropriate guidance.

(Sauer, Southon and Dampney, 1997, pp. 360–361)

Issues of the planning of IT systems strategy, frequently referred to as
Strategic Information Systems Planning (SISP) have been the subject of
much work by academics and practitioners for several decades. SISP was
deﬁned as long ago as 1988 as ‘the process of deciding the objectives for
organizational computing and identifying potential computer applications
which the organization should implement’ (Lederer and Sethi, 1988, p. 445).

107

Part 2 – Planning for an uncertain future

One of the key academics writing in SISP, John Ward, wrote an overview of
the concepts and methods in SISP (Ward, 2012). A key part of his discussion
is the extent to which IT systems strategy has or has not been central to
wider organisation strategy. He summed up his discussion by arguing that:

The balance of inﬂuences on the nature of organisational [IT systems
strategies] has changed repeatedly over the last 30 years. Inevitably the
economic cycles have been a major cause of changes in focus and priorities
as well as the stimulus for innovative new entrants to the IT industry or
consolidation through mergers and acquisitions. Throughout that period the
IS/IT organisation has fought to retain its inﬂuence while being gradually
squeezed into becoming largely a purchasing and implementation agency as
the suppliers and business managers have taken over decisions affecting the
ISS. Information systems strategies have become more collections of
investments which can be related back to business strategies or options,
rather than coherent sets of investment plans which are driven by the
strategy. This is perhaps inevitable given the increasing rates of market and
industry change and the uncertainties and short term thinking that causes.
But it may also be because, for many organisations, IS/IT is now just
‘business as usual’, requiring incremental development and attention to
reducing cost?

(Ward, 2012, pp. 168–169)

Whether IT systems strategy is considered central to organisational strategy,
or simply as ‘business as usual’, it is clear that making IT systems ready for
a range of future scenarios will always be important. The techniques in this
Part, both technology forecasting and scenario planning, are thus crucial in
ensuring that an IT system ﬁts within a wider organisational strategy.

2.7 Summary
In this Part, we have looked at the ways in which future events are uncertain,
and how to plan for that uncertainty, to (try to) ensure continued success for
IT systems. We began by examining methods for technology forecasting to
gain an understanding of how technology might work in practice. After
looking at reasons why future planning is often so uncertain, we then looked
in detail at scenario planning – a set of methods that don’t predict the future
but allow organisations to be ready to respond to it. Lastly, we looked at how
these approaches can be drawn together in the strategic planning of IT
systems.

Of course, even using the most appropriate approaches to try to manage the
future, sometimes things go wrong. In the next Part, you will look at
disasters – planning for them and recovering from them.

108

Part 2 – Planning for an uncertain future

Answers to activities
Please note that some activities do not have answers in this section if they
are open-ended, simply give instructions for reading or media use, or if a
comment is given in the text.

Activity 2.1
The author has described some of their personal experience with SWOT and
STEEPLE during this Part. They have not used either technology
roadmapping or Delphi in the course of their work (beyond reading and
writing about them in this module), but they know both of them are very
useful in some situations.

In terms of where they are useful:

. SWOT is used quite commonly in organisational settings, as a way for
groups to understand the nature of their organisation and the challenges
facing it. SWOT is often used rather superﬁcially, but can be very useful.

. STEEPLE is useful as a way to understand characteristics of the

organisational environment. It could be part of a method of some sort to
capture different issues, or it could be used as an aide-memoire during
analysis to ensure that a wide range of issues have been considered.
. Technology roadmapping is an important exercise for organisations that
are strongly focused on particular technologies, to help them see the
direction that they need to move in. This may be proactive or reactive –
for example, many newspapers have progressively moved in recent years
from being print-driven to being available on web browsers and then on
mobile devices, and an awareness of changing trends has been important
to them.

. Delphi is an excellent approach for understanding long-term trends,

although when used in its complete form it requires a lot of time and
resources – so it is probably mostly useful in large-scale projects.

Activity 2.2
Here are two technological examples that the author has been noticing in
recent years (note that this was last updated in autumn 2023):

. There is much talk about 3D printing (sometimes called additive

manufacturing), a technique for building real-world objects using a
method similar to inkjet printing by building up layers of plastic or other
materials. Many commentators suggest that this will have a huge effect on
global manufacturing processes, enabling much greater customisation,
rapid reaction and local production. If this were so, it could also disrupt
the current trend of large quantities of goods designed for Western
markets being manufactured in China and shipped thousands of miles,
with potentially signiﬁcant economic, political and environmental
consequences. But it may not happen to any great extent, or it may have
different consequences.

109

Part 2 – Planning for an uncertain future

. At the time of writing, several expert commentators have written about

the dangers of artiﬁcial intelligence (AI) in terms of the risk of plagiarism
and job losses through generative AI tools; and more broadly of ‘frontier
AI’ issues such as what could happen if an AI was developed with
greater-than-human intelligence and/or able to program its own
capabilities. It is suggested that AI technologies could pose signiﬁcant
dangers to the human race. Other commentators, politicians, and those
working for companies which develop AI tools, argue for the positive
economic beneﬁts of artiﬁcial intelligence tools and a need to regulate
them with caution. Both sets of commentators are describing a similar
phenomenon but with rather different outcomes. Which will be proved to
be right? Or are their basic assumptions incorrect that AIs must advance
to this extent?

By the time you read this, they may have been proved correct, or proved
wildly wrong, or yet to be seen. This will be so with all predictions for the
future, whether they are technological, political, economic, social or in
another area.

Activity 2.3
(a) There is a lot of detail in the Shell scenarios book, and it is hard to

summarise or comment on in brief. The summary book contains quite a
lot of graphs that concern the use of different energy types – clearly
important for Shell, but less so for the general reader. The author has
therefore focused mostly on the scenario descriptions on pages 8 and 9 of
the summary book. Based on these, the scenarios could be summarised as
follows:
◦ Archipelagos: This scenario assumes signiﬁcant growth of

◦

militarism, nationalism and competition, with the world divided
into various large alliances (the book compares this to the
nineteenth-century power alliances), and global agreements fade
away. These various national alliances are more focused on
energy supply and resilience than collective work to address
climate change – carbon emissions do slowly fall, but net zero is
not reached even by 2100, by which time global temperature rise
has reached 2.2°C.
Sky 2050: In lots of ways this is a more optimistic scenario. It
arises from there being signiﬁcant global progress on the
reduction of climate change from the late 2020s onwards. This
arises largely from political pressures within nations to improve
environmental policies, leading to national competition in being
the most effective at emissions reduction. This competition, as
much as global institutions, leads to the arrival of global net-zero
in 2050 and (after an initial temperature rise above 1.5°C), the
containment of global warming to 1.2°C by the end of the
century.

(b) Reading through the scenarios in detail and thinking through their

implications, the author was struck by:

110

Part 2 – Planning for an uncertain future

◦ The uncertainty of these futures and the difﬁculty of predicting
which of them may actually arise. It is for this reason that
scenario planning has always been about preparing for many
plausible futures rather than predicting the likeliest future.

◦ The messiness of understanding the future. Labels like

‘Archipelagos’ and ‘Sky 2050’, and the neat description of
events year-by-year, are not the way those futures will feel. It is
said that journalism is the ﬁrst draft of history, but day-to-day
events often feel a lot more complicated than they are described
in advance or in retrospect. Most of the time during the timescale
described by these scenarios, it won’t be clear which scenario is
holding true – and more likely it will be a mixture of the two,
taking place in different ways in different places.

◦ The way in which these two scenarios were developed differently
(see page 7 of the summary document): Archipelagos seeking ‘to
follow a possible path from where the world was in 2022’, while
Sky 2050 taking ‘a normative approach that starts with a desired
outcome and works backwards to explore how that outcome
could be achieved’. It certainly seems to me as a reader that Sky
2050 would be a much more desirable future than Archipelagos.

◦ The ever-present law of unexpected consequences – particular
actions taken for (apparently) good reasons may lead to quite
different outcomes from that which were sought.

It is up to you to decide to what extent Shell’s role as an oil producer has
inﬂuenced these scenarios. Obviously their focus is on energy, rather than
other global economic/political/environmental factors, but do you think that
the company’s economic interests dictate what is found in the scenarios, or
not? We are genuinely unsure, but the question deﬁnitely needs to be
considered.

Activity 2.4
Here is our version of the exercise – you may have produced something
similar or quite different! The author has generated these particular scenarios
alone, sitting at a laptop. It’s quite likely that you may have produced your
scenarios in the same way, although if you’ve involved other people that’s
great. We described the scenario planning methods as most involving groups,
and they do work best that way, but you can certainly get insights from
conducting them as an individual – and of course you’ll be required to use
them as an individual for assessment purposes.

Focus

One of the difﬁculties of working with a case study concerning a past set of
events, such as the development of an IT system, is knowing where to place
the focus. This case study was published in December 2021. It describes
where an IT system had recently been installed. We have taken the focus still
to be the IT system used by City Harvest, within the context of the wider
food distribution and supply system within London.

111

Part 2 – Planning for an uncertain future

As far as possible, we have only used information on the IT system that can
be found within the case study description which combines an article in
Computing magazine with a press release from City Harvest’s IT supplier,
Tibco, rather than any later information that could be found online about City
Harvest’s systems. Press releases and ‘case studies’ from IT manufacturers
and consultants need to be read with care, as they’re often just advertising
and certainly don’t discuss problems that arose, but they can be useful as part
of understanding an IT system. We have drawn on additional knowledge
about the wider environment of the system, in analysing driving forces.

In terms of timescale, we have looked at a timescale of 2035 – 13 to 14 years
from the date of the case study – as round number dates often produce a
better sense of vision than simply saying a certain number of years in the
future. It’s worth observing that given the speed of IT change, even a
timescale of 13 years could result in more than one generation of IT system
change.

Our sample driving forces and scenarios were written in October 2023. This
is important to note because some of them make reference to current events,
both political and economic, and by the time you read this, some of these
will inevitably have been overtaken by events that actually happened.

Driving forces

We have followed the STEEPLE framework to generate driving forces:

. Socio-cultural: growth in vegan/vegetarian food changing eating patterns;
increased numbers of single households; growing use of food banks in UK

. Technological: rising use of AI technologies to enable better food

distribution; artiﬁcial creation of meat-substitutes getting better and better

. Economic: UK economy in bad state due to productivity issues and

Brexit; potential continued impact of Russian invasion of Ukraine and
COVID-19

. Environmental: growing awareness of problems with food waste; rise of

zero-carbon policies; potential lower use of air travel

. Political: likely change of UK government in 2024 election and

consequent change in economic policies; global instability due to rise of
autocracies; increased global conﬂict

. Legal: privacy concerns about sharing data on food use; potential risk of

beyond-date food causing harm

. Ethical: questions about appropriateness of giving surplus food to

deprived people and/or whether this should be state-run rather than
charitable.

112

Part 2 – Planning for an uncertain future

Mini scenarios

From these driving forces we have developed a set of [seven] mini scenarios:

1 Massive global instability and UK economic decline makes local food

production by everyone necessary.

2 Fair food distribution becomes a big political issue, and after Labour

swings further left, City Harvest is nationalised.

3 Continued economic problems (both UK and global) make City Harvest

more and more relevant, and they expand UK-wide.

4 Combination of environmental, ethical and economic issues make meat-

eating very rare.

5 AI technologies and artiﬁcial food growth allow for even tighter supply

chains, reducing food waste to very small amounts.

6 Huge economic collapse, food banks everywhere.
7 Environmental concerns mean that, even though the UK economy is doing
OK, local food production is widespread, and often with surplus that
needs distribution.

Developed scenarios (brief outlines)

Combining some of the mini scenarios we have come up with four larger
scenarios for the state of City Harvest’s IT systems and its wider environment
in 2035. Note that we have not followed all the mini scenarios exactly; and
elements of some of them repeat in more than one scenario. Figures in
brackets show which mini-scenario has been drawn upon.

1 British decline, political reaction (2,6): The continued impact of austerity
and Brexit (not altered by the re-elected government of Rishi Sunak)
meant that the UK continued in a bad economic state throughout
the 2020s. Food bank use rose and rose, international supply chain
pressure led to poor quality imports and empty supermarket shelves, and
food riots. These resulted in the rise of a Labour Party leader signiﬁcantly
to the left of previous leaders, who was elected in a landslide in 2029 and
among other measures brought in strict food distribution controls. These
included the nationalisation of distributors such as City Harvest.
2 The return of UK market gardens (7): The global economy having

recovered somewhat from COVID-19 and the Ukraine invasion, and the
UK having found an uneasy but ﬁrm relationship with the EU, found
economic conditions improved by 2030. However, the ever-present
experience of climate change and the strength of the COP32 summit
outcomes meant that food production had become as local as possible, and
in the case of the UK largely within these islands. New technologies
allowed for year-round growing of previously imported food (even
bananas) and a very healthy competitive market, but this led to much
surplus food across the UK. In this situation, City Harvest and similar
organisations became crucial to distribute these surpluses.

113

Part 2 – Planning for an uncertain future

3 Allotments for all (1,3): The protracted Russia-Ukraine conﬂict and the

invasion of Taiwan by China in 2027 led to a massive global recession, to
which the UK was particularly badly placed to respond effectively. A
return to the land, with widespread growing of vegetables for one’s own
needs, became necessary – and global heating, despite the massive
instabilities it caused elsewhere, helped UK growers to have more varied
crops all the year round. However, this made for large surpluses at some
times of the year and in some areas. City Harvest responded by becoming
a national organisation, transporting ﬁsh from farms on the west of
Scotland to the south, and vegetables from the south of England north.
4 Bespoke surplus distribution, mostly vegan (4,5): Environmental concerns
about methane emissions, and the introduction of the Cow Tax, led to the
vast majority of the UK population becoming vegan or vegetarian, though
often supplemented by increasingly good meat substitutes grown in
factories. Better food technologies and the use of AI led to much tighter
supply chains, meaning that the days of food surpluses diminished hugely;
and economic recovery meant that food banks decreased also. This meant
that organisations such as City Harvest largely became unnecessary,
although small amounts of redistribution work continued to be useful and
important.

Activity 2.5
Again, what follows here is only one way of approaching the scenarios, and
you may have come up with something quite different. Please do not take
this as the right answer, but as a worked example of what can be done with
this material.

Focus

The activity question does not speciﬁcally ask for a focus, but we have taken
this to be the same as in Activity 2.4 (the IT system used by City Harvest,
within the context of the wider food distribution and supply system within
London), with a timescale of 2035. You may also have used the same focus
and timescale, or have found that a different one was more appropriate for
the key uncertainties method. You may have even found yourself implicitly
using a different focus/timescale without having stated it explicitly at the start
of your analysis.

Driving forces

We have seen no reason in this activity to use a different set of driving forces
from those in Activity 2.4. You may have come up with different ones,
however. To repeat, the driving forces we developed there using the
STEEPLE framework were:

. Socio-cultural: growth in vegan/vegetarian food changing eating patterns;
increased numbers of single households; growing use of food banks in UK

. Technological: rising use of AI technologies to enable better food

distribution; artiﬁcial creation of meat-substitutes getting better and better

114

Part 2 – Planning for an uncertain future

. Economic: UK economy in bad state due to productivity issues and

Brexit; potential continued impact of Russian invasion of Ukraine and
COVID-19

. Environmental: growing awareness of problems with food waste; rise of

zero-carbon policies; potential lower use of air travel

. Political: likely change of UK government in 2024 election and

consequent change in economic policies; global instability due to rise of
autocracies; increased global conﬂict

. Legal: privacy concerns about sharing data on food use; potential risk of

beyond-date food causing harm

. Ethical: questions about appropriateness of giving surplus food to

deprived people and/or whether this should be state-run rather than
charitable.
Key uncertainties

From these driving forces, we identiﬁed four potential variables which could
be used as key uncertainties in making sense of City Harvest’s IT systems, in
the time period to 2035:

1 Environmental: local food production vs global supply chains.
2 Economic: Continued UK decline vs economic recovery.
3 Technological: AI central to life vs AI considered harmful.
4 Political: Global instability vs new stable order.
Variables one and two seem particularly productive for food distribution here
so we have mapped them below (note that they are not particularly IT-
focused):

Local food production

Allotments for all

The return of UK
market gardens
(with surplus)

Continued
UK decline

Economic
recovery

British decline,
political reaction

Tesco still rules (and
still has a lot of waste)

Global supply chains

Figure 2.6 Key uncertainties matrix for the City Harvest IT system

Short scenarios

The key uncertainties matrix leads to the following four scenarios – all but
the bottom-right quadrant were also found in Activity 2.4 and are copied

115

Part 2 – Planning for an uncertain future

from that answer (they are listed here from left to right and then top to
bottom):

. Allotments for all: The protracted Russia-Ukraine conﬂict and the invasion
of Taiwan by China in 2027 led to a massive global recession, to which
the UK was particularly badly placed to respond effectively. A return to
the land, with widespread growing of vegetables for one’s own needs,
became necessary – and global heating, despite the massive instabilities it
caused elsewhere, helped UK growers to have more varied crops all the
year round. However, this made for large surpluses at some times of the
year and in some areas. City Harvest responded by becoming a national
organisation, transporting ﬁsh from farms on the west of Scotland to the
south, and vegetables from the south of England north.

. The return of UK market gardens: The global economy having recovered
somewhat from COVID-19 and the Ukraine invasion, and the UK having
found an uneasy but ﬁrm relationship with the EU, found economic
conditions improved by 2030. However, the ever-present experience of
climate change and the strength of the COP32 summit outcomes meant
that food production had become as local as possible, and in the case of
the UK largely within these islands. New technologies allowed for year-
round growing of previously imported food (even bananas) and a very
healthy competitive market, but this led to much surplus food across the
UK. In this situation, City Harvest and similar organisations became
crucial to distribute these surpluses.

.

. British decline, political reaction: The continued impact of austerity and
Brexit (not altered by the re-elected government of Rishi Sunak) meant
that the UK continued in a bad economic state throughout the 2020s.
Food bank use rose and rose, international supply chain pressure led to
poor quality imports and empty supermarket shelves, and food riots.
These resulted in the rise of a Labour Party leader signiﬁcantly to the left
of previous leaders, who was elected in a landslide in 2029 and among
other measures brought in strict food distribution controls. These included
the nationalisation of distributors such as City Harvest.
Supermarkets still rule (and still have a lot of waste): The global
economy did eventually recover from COVID-19 and the Ukraine
invasion, and the UK eventually managed to build an effective economic
relationship with the EU, leading to UK growth by the late 2020s. In the
mean time, global supply chains became strengthened by the Global Food
Distribution Programme (established to manage food distribution on a
commercial basis from countries with surplus food to those with
shortages) and really effective electric shipping which made supply chains
net-zero. So the UK returned to a state where supermarkets still ruled.
However, while the global programme reduced some waste, within-
country food surplus and waste became increasingly seen as ethically
wrong – and thus City Harvest was still needed.

116

Part 2 – Planning for an uncertain future

Activity 2.6
Interestingly, almost the only mention of how the scenarios were generated is
found in Ringland’s statement that ‘using a more or less standard scenario
process we developed two scenarios’ (p. 24 of the reading), although she
references her own book on the subject which goes into much more detail.
The article talks at some length about the use of the scenarios, however, as
part of a strategic approach to IT strategy.

In terms of how well the scenarios apply to the IT industry as it developed,
I’d say that a bit of both scenarios can be seen. Certainly the Coral Reef
world of IT innovation full of colourful startups is a very familiar one; but so
too is the idea of a few large companies found in the Deep Sea scenario. It
remains the case that nobody in enterprise IT would be sacked for buying
Microsoft, or indeed Apple – but on the whole perhaps the world is more like
Coral Reef.

Activity 2.7
We will not work through a speciﬁc example here, having provided a number
of examples of scenarios already. We hope you found it useful and
interesting. Either method can produce scenarios that can be genuinely
helpful to make sense of the environment surrounding an IT system, and the
possible futures that IT system could be successful within.

117

Part 2 – Planning for an uncertain future

References
Adams, M.J., Finch, M. and Gamble, B. (2023) ‘More than a game: scenario
planning, imagination, and the public library’s future’, Public Library
Quarterly, 42(6), pp. 665–687.

Andersson, J. (2020) ‘Ghost in a shell: the scenario tool and the world
making of Royal Dutch Shell’, Business History Review, 94(4), pp. 729–751.

Battista, M. (2023) Factsheets: PESTLE analysis. Available at: https://www.
cipd.org/en/knowledge/factsheets/pestle-analysis-factsheet/ (Accessed: 5
March 2024).

Burden, K. and Kearney, M. (2016) ‘Future scenarios for mobile science
learning’, Research in Science Education, 46(2), pp. 287–308.

Burn, J.M. and Szeto, C. (2000) ‘A comparison of the views of business and
IT management on success factors for strategic alignment’, Information &
Management, 37(4), pp. 197–216.

Ciborra, C. (1997) ‘De profundis? Deconstructing the concept of strategic
alignment’, Scandinavian Journal of Information Systems, 9(1), pp. 67–82.

Curry, A. (2007) ‘Acting on the future’, in B. Sharpe and K. van der Heijden
(eds) Scenarios for success: turning insights into action. Chichester: John
Wiley, pp. 339–371.

Curtis, G. and Cobham, D. (2006) ‘Strategy and information systems’, in M.
Hinton (ed.) Introducing information management: the business approach.
Oxford: Elsevier Butterworth-Heinemann, pp. 153–177.

Davis, G. (1998) ‘Creating scenarios for your company’s future’, The 1998
Conference on Corporate Environmental, Health, and Safety Excellence. New
York City, 28 April.

de Geus, A. (1997) The living company: growth, learning and longevity in
business. London: Nicholas Brealey Publishing.

de Weck, O.L. (2022) Technology roadmapping and development: a
quantitative approach to the management of technology. Cham: Springer.

Earl, M.J. (1999) ‘Strategy-making in the information age’, in W. Currie and
B. Galliers (eds) Rethinking management information systems: an
interdisciplinary perspective. Oxford: Oxford University Press, pp. 161–174.

Evans, A. and Steven, D. (2020) ‘Our COVID future: the long crisis
scenarios’. London: Local Trust. Available at: longcrisis.org/wp-content/
uploads/2020/05/Long-Crisis-COVID-Scenarios-21May20-2.pdf (Accessed: 5
March 2024).

Gartner (2023) What’s new in the 2023 Gartner hype cycle for emerging
technologies. Available at: https://www.gartner.com/en/articles/what-s-new-in-
the-2023-gartner-hype-cycle-for-emerging-technologies (Accessed: 5
March 2024).

118

Part 2 – Planning for an uncertain future

Glenn, J.C. and Gordon, T.J. (2004) ‘Future issues of science and
technology’, Technological forecasting and social change, 71(4),
pp. 405–416.

Go, K. and Carroll, J.M. (2004) ‘The blind men and the elephant: views of
scenario-based design’, Interactions, 11(6), pp 44–53.

Godet, M. (2001) Creating futures: scenario planning as a strategic
management tool. London: Economica.

Haan, S. (2023) Factsheets: SWOT analysis. Available at: https://www.cipd.
org/en/knowledge/factsheets/swot-analysis-factsheet/ (Accessed: 5
March 2024).

Kahane, A. (1999) ‘Changing the winds: scenarios for people who want to
change the world’, Whole Earth, 96(Spring), pp. 82–87.

Kahn, H. and Wiener, A. (1967) The year 2000: a framework for speculation
on the next thirty-three years. New York: Macmillan.

Kahn, H., Brown, B. and Martel, L. (1976) The next 200 years: a scenario
for America and the world. New York: William Morrow & Co.

Kay, A. (1989) ‘Predicting the future’, Stanford Engineering, 1(1), pp. 1–6.
Available at: http://www.ecotopia.com/webpress/futures.htm (Accessed: 5
March 2024).

Kerr, C. and Phaal, R. (2020) ‘Technology roadmapping: industrial roots,
forgotten history and unknown origins’, Technological Forecasting and Social
Change, 155, article number 119967. Available at: https://doi.org/10.1016/j.
techfore.2020.119967

Kleiner, A. (2008) The age of heretics. 2nd edn. San Francisco, CA: Jossey-
Bass.

Lederer, A.L. and Sethi, V. (1988) ‘The implementation of strategic
information systems planning methodologies’, MIS Quarterly, 12(3),
pp. 445–461.

Leonard, J. (2021) ‘Turning surplus food into square meals: the tech behind
feeding London’s hungry’, Computing, 9 December. Available at: https://
www.computing.co.uk/feature/4041812/surplus-food-square-meals-tech-
feeding-london-hungry (Accessed: 5 March 2024).

Linstone, H.A. (1999) Decision making for technology executives: using
multiple perspectives to improve performance. Boston, MA: Artech House.

Luftman, J.N., Papp, R. and Brier, T. (1999) ‘Enablers and inhibitors of
business–IT alignment’, Communications of AIS, 1, article number 11.

Matzdorf, F. and Ramage, M. (1999) ‘Out of the box – into the future’,
Organisations and People, 6(3), pp. 29–34.

Meadows, D.H., Meadows, D.L., Randers, J. and Behrens, W. (1972) The
limits to growth: a report for the Club of Rome’s project on the predicament
of mankind. New York: Potomac Associates.

119

Part 2 – Planning for an uncertain future

Naughton, J. (2014) ‘Forget Orwell and Huxley – Dave Eggers has seen the
future’, The Observer, 31 August. Available at: http://www.theguardian.com/
technology/2014/aug/31/forget-orwell-huxley-dave-eggers-has-seen-future
(Accessed: 5 March 2024).

Phaal, R., Farrukh, C.J.P. and Probert, D.R. (2004) ‘Technology roadmapping
– a planning framework for evolution and revolution’, Technological
Forecasting and Social Change, 71(1–2), pp. 5–26.

Ramirez, R. and Lang, T. (2020) The Oxford scenario planning approach in
the era of Covid-19. Available at: https://www.sbs.ox.ac.uk/oxford-answers/
oxford-scenario-planning-approach-era-covid-19 (Accessed: 5 March 2024).

Ringland, G. (2003) ‘Scenario planning: persuading operating managers to
take ownership’, Strategy & Leadership, 31(6), pp. 22–28.

Ringland, G. (2006) Scenario planning: managing for the future. Chichester:
John Wiley.

Sauer, C., Southon, G. and Dampney, C.N.G. (1997) ‘Fit, failure, and the
House of Horrors: toward a conﬁgurational theory of IS project failure’, in
Proceedings of the 18th International Conference on Information Systems.
Atlanta, GA: Association for Information Systems, pp. 349–366.

Schwartz, P. (1991) The art of the long view. New York: Doubleday.

Schwartz, P. (2004) ‘Big thinking’, Across the Board, 41(1), pp. 27–33.

Shell (2023) The energy security scenarios summary. London: Shell.
Available at: https://www.shell.com/energy-and-innovation/the-energy-future/
scenarios/the-energy-security-scenarios.html (Accessed: 5 March 2024).

Technology Futures Analysis Methods Working Group (2004) ‘Technology
futures analysis: toward integration of the ﬁeld and new methods’,
Technological Forecasting and Social Change, 71(3), pp. 287–303.

Tibco (2021) City Harvest London combats food insecurity with smart
applications. Available at: https://www.tibco.com/customers/city-harvest-
london (Accessed: 13 November 2023).

van der Heijden, K., Bradﬁeld, R., Burt, G., Cairns, G. and Wright, G. (2002)
The sixth sense: accelerating organizational learning with scenarios.
Chichester: John Wiley.

van der Heijden, K. (2004) ‘Insights into foresight’, in H. Tsoukas and J.
Shepherd (eds) Managing the future: foresight in the knowledge economy.
Oxford: Blackwell, pp. 204–211.

Vardi, M. (2014) ‘Moore’s Law and the Sand-Heap Paradox’,
Communications of the ACM, 57(5), p. 5.

Ward, J. (2012) ‘Information systems strategy: Quo vadis?’, Journal of
Strategic Information Systems, 21(2), pp. 165–171.

Wilkinson, A. and Kupers, R. (2013) ‘Living in the futures’, Harvard
Business Review, 91(5), pp. 118–127.

120

Part 3 – How to recover from
failure: Business Continuity
Planning

David Chapman and Magnus Ramage

Part 3 – How to recover from failure: Business Continuity Planning

Part 3 – How to recover from failure:
Business Continuity Planning

Introduction
In this module you have been studying methods aimed at building and
maintaining successful systems. In Part 2 of this block you explored
techniques aimed at avoiding being caught unaware of future changes and
developments. Sometimes though, things can go wrong and however well
designed and built, there are events that can cause a system to fail. It might
be a major disaster, such as the attacks on the World Trade Center in New
York on September 11, 2001, or it might be something much more ordinary
and common, such as a problem with a computer upgrade. Regardless of
what causes the disruption, an organisation can ﬁnd itself in the situation of
having to recover.

This Part is about how organisations can recover from disruption, but also
how they can ready themselves to be in a position to recover if and when
disruption happens. More broadly, it is about what is referred to as Business
Continuity Management (BCM), which is deﬁned in the UK government’s
Business Continuity Management Toolkit as:

A management process that helps manage the risk to the smooth running of
an organisation or delivery of a service, ensuring that it can operate to the
extent required in the event of a disruption.

(HM Government, no date, p. 17)

You start your study of this topic in section 3.1 by watching a video about
the September 11 attacks on the World Trade Center in New York. This is
followed by reading accounts of how organisations recovered from the
destruction caused by the September 11 attacks and exploring the lessons that
were learned through the experience of these and other disasters.

Section 3.2 has a focus on business continuity management across all the
activities of an organisations. Speciﬁcally, you will study the UK government
Business Continuity Management Toolkit that was mentioned above, as well
as other relevant literature, especially a paper about how organisations can
prepare for disruption (Oberg, Whitt and Mills, 2011).

By contrast, section 3.3 focuses speciﬁcally on how IT systems should be
prepared to cope with disruption. This section is based around the
international standard on ‘ICT Readiness for Business Continuity’, BS ISO/
IEC 27031:2011. An additional aim of the section is to introduce the role of
technical standards and their importance for businesses.

The Part ﬁnishes with the summary in section 3.4.

123

Part 3 – How to recover from failure: Business Continuity Planning

Note: BS ISO/IEC 27031:2011 refers to ‘ICT’ readiness, whereas in this
module we have been discussing ‘IT’ systems. There is no signiﬁcance
in the distinction. IT systems discussed in TM353 very often include a
‘C’ (communication) component. The omission or inclusion of the ‘C’ is
merely a convention in any particular context.

3.1 Attack on the Wires
On September 11, 2001, terrorists ﬂew two aircrafts into the towers of the
World Trade Center in New York, causing a huge loss of life.

The September 11 attacks were an extreme example of a disaster. The loss of
life was clearly the biggest concern in the immediate aftermath, but a number
of businesses lost substantial facilities, data and equipment, as well as people,
and needed to get back up and running if the businesses were to survive.
According to a study by Ernst & Young in India (Srinivasan, 2002):

[I]n a disaster of major proportions, such as the Sept. 11 World Trade
Center attack, only 43 percent of the affected businesses ever resume
operations. Among those who restart, only 29 percent are likely to remain
in business after two years.

(Srinivasan, 2002)

So, many businesses experiencing a disaster do not survive, but some do, and
there is much to be learned from past events that can improve the chance of
getting through disasters in the future.

We will ask you to begin your study of this Part by watching Attack on the
Wires, a 30-minute television programme originally produced by the BBC in
association with an OU module on digital communications, and broadcast on
BBC Two in 2002. It looks at the damage done to the communications
infrastructure of New York by the terrorist attacks that destroyed the World
Trade Center in September 2001, how various communication networks
coped, and the work done to restore communication after the attack.

The programme was made a long time ago, but it is still relevant, and, as
well as being a stark warning of the possibilities of disaster that can face any
organisation, it is useful for this Part because there has been a lot written
about how organisations responded to the aftermath. You will be reading
some of the accounts of organisations caught up in the disaster after watching
the video.

If you have not already done so, watch Attack on the Wires now, which is
linked from the Block 3 Part 3 resources on the module website.

124

Part 3 – How to recover from failure: Business Continuity Planning

3.1.1 Lessons from 11 September 2001
You are now going to read some articles which discuss the experiences of
businesses affected by the September 11 attacks, and identify some of the
lessons.

Note: The text here is written assuming that you do an activity
immediately after reading each article. You could equally well read all
three articles, one straight after the other, and then do the three activities
together. You should do it whichever way you prefer.

Activity 3.1 (exploratory)

30 minutes
Read ‘Ten years later: IT and life lessons from the South Tower’ by Bob
Eisenhardt (2011) now. You can ﬁnd a link to this in the Block 3 Part 3
resources section of the module website. This is a very personal account by
an employee of Aon who worked in one of the towers that was destroyed.

Identify two reasons from Eisenhardt’s account that explain why Aon were
able to get their business up and running again very quickly.

Activity 3.2 (exploratory)

30 minutes
More than twenty years have now passed since the September 11 attacks –
technology, in general, and telecommunications, in particular, have changed
much since then. The next article, ‘How technology and the world have
changed since 9/11’ by Darrell West and Nicol Turner Lee (2021), considers
these changes. Read this article now. You can ﬁnd a link to this in the
Block 3 Part 3 resources section of the module website.

What are the main ways in which West and Turner Lee suggest that the
world has changed since the September 11 attacks?

These ﬁrst two articles were short and focused speciﬁcally on the lessons
learned from the September 11 attacks. In the next activity you will be
reading a longer and more analytical article.

125

Part 3 – How to recover from failure: Business Continuity Planning

Activity 3.3 (exploratory)

1 hour 30 minutes
Read ‘Recovering from Database Recovery: Case Studies and the Lessons
They Teach’ by Mary Hoferek and Susan Wilson (2007) now. You can ﬁnd a
link to this in the Block 3 Part 3 resources section of the module website.

(a) Hoferek and Wilson have written a different sort of article compared to
the previous two, so before considering the content of their article,
compare the provenance and the style of the three articles. Identify the
sources of each of all three articles, ﬁnd out something about the
organisation that published them (conduct a search on the web) and
comment on how that is reﬂected in the writing styles.

(b) The articles talk about lessons learned from the experiences of the

disasters, and many of the lessons that they identify are common to two
or all three of them. Imagine that you run a small business, perhaps a
shop which also sells goods online and employs about 20 people. You are
concerned about the business surviving in the event of disruption. What
are the three main lessons you would take away from these articles?

We hope you noticed that many of the lessons can be associated with
sociotechnical systems thinking. Recall that sociotechnical systems thinking
emphasises the importance of considering the three components of the
technology, the organisation and the people. Taking this approach to planning
for disaster recovery would inevitably force you to take account of the
importance of people, and would encourage you to think in terms of the
relevance of database professionals across the wider work of an organisation
(and not just its narrow IT functions). As Hoferek and Wilson (2007)
explained: ‘In crafting response and recovery plans, IT workers should
routinely ask the very sobering question,“If I cannot do my job, what would
someone need to know to do it”Th is charges IT workers to view themselves
and their counterparts as true designers of the strategic mission.’

3.1.2 Disasters will happen – are you ready?
You saw in the video that Verizon was heavily caught up in the events of the
September 11 attacks. The paper, ‘Disasters Will Happen – Are You Ready?’
(Oberg, Whitt and Mills, 2011) was written by employees of Verizon and
puts forward ideas about how organisations should prepare for disruption.

We will be referring to some parts of this paper as we go through this Part.
You are not required to read the whole paper, but it would be a good idea to
scan through it now in order to get some idea of its contents.

To start with, Figure 3.1 is a spray diagram of the contents of this paper and,
by way of further introduction to some of the important topics of business
continuity planning, we shall brieﬂy discuss each of these topics now.

126

Part 3 – How to recover from failure: Business Continuity Planning

Introduction

Exercising
your plan

Disaster
planning

Business
impact
analysis

Risk analysis

Emergency
operations
centre

Money
matters

The role of
government

Strategy and
plan development

Communications

Personnel
matters

Figure 3.1 Spray diagram of ‘Disasters Will Happen – Are You Ready?’ by
Oberg, Whitt and Mills, 2011

Disaster planning
One of the common themes mentioned in the papers you looked at earlier
was the importance of having a disaster recovery plan in place. Oberg, Whitt
and Mills highlight four aspects of disaster planning for further discussion,
which will be discussed in more detail in section 3.2:

. Strategy and plan development
. Risk analysis
. Business impact analysis
. Exercising the plan.

Communications
Since this paper is in IEEE’s Communications Magazine, and the paper’s
authors work for a communications organisation, perhaps it is not surprising
that they emphasise the importance of communications.

The paper contains a section entitled ‘Communications are Always Critical’
which starts with the following:

127

Part 3 – How to recover from failure: Business Continuity Planning

An absolute requirement of any sort of disaster response or recovery plan is
communications. You need to be able to communicate with your people to
assess their condition, and the scope of the situation you face. You need to
be able to communicate with your suppliers and your customers, with
regulatory and government, and your stakeholders. You need to plan for
communicating with the media, decide what will be said, and identify who
will do the talking.

(Oberg, Whitt and Mills, 2011, p. 38)

This is undoubtedly true for any sort of disruption, not just a disaster.

Activity 3.4 (self-assessment)

10 minutes
The paper by Hoferek and Wilson that you read in Activity 3.3 said that there
were lessons about communication that could be learned from the experience
of Barclays Capital after the World Trade Center attacks, both strengths and
problems. What were they?

Emergency operations centres, money matters, and personnel matters
Oberg, Whitt and Mills (2011) say about an emergency operation centre
(EOC) that: ‘There must be some central point where information comes
together to be analyzed and presented to those responsible for directing the
response and recovery efforts’ (p. 39). Consideration needs to be given to
where the EOC will be, and what facilities it needs to have. Depending on
the nature of the disruption, the EOC could be at the normal workplace, but
thought needs to go into an alternative location in case the incident has
rendered the normal workplace unavailable. Remember that Hoferek and
Wilson talked about how an emergency operations centre for Tulane
University was set up at Houston after Hurricane Katrina, but that this
happened ‘by chance’ rather than having been planned.

‘Money matters’ are the problems that an organisation may have if their
banking and ﬁnancial services are for some reason unavailable. There needs
to be some way to continue paying employees and suppliers of vital services.

Oberg, Whitt and Mills say of personnel matters:

No response or recovery effort is going to succeed without people [that] can
apply the necessary skills, resources, and energies to solving the problems.
Your people are themselves a key resource, and must be cared for
physically and psychologically.

(Oberg, Whitt and Mills, 2011, p. 40)

128

Part 3 – How to recover from failure: Business Continuity Planning

The general point about the importance of people in recovering from disasters
came across in all of the other papers. To take just one example, Hoferek and
Wilson say:

The disaster recovery plan should prepare contingencies for caring for staff
not only to ﬁll in for their colleagues, but to handle the trauma of losing a
trusted and critical staff member.

(Hoferek and Wilson, 2007, p. 12)

The role of government
Oberg, Whitt and Mills have quite a lot to say about the role of government
in major national disasters, but the main focus of our material in TM353 is
not one of major disasters. Our focus is on the more general problem of
disruption to an organisation, which in most cases will not be caused by an
event that involves the government in the ways discussed by Oberg, Whitt
and Mills. Nevertheless, it is important to be aware of the role of government
in the event of major disasters and, as we shall see, there is also a lot of
useful advice available from UK government sources for more general
business continuity issues.

The article by Oberg, Whitt and Mills is written speciﬁcally from an
American perspective, so, unless you are based in the USA, the details of the
discussion in there are not directly relevant. Despite this, the broad principles
are likely to be similar in the UK and elsewhere.

Activity 3.5 (exploratory)

30 minutes
There is an activity in the Block 3 Part 3 Resources section of the module
website that asks you to explore the UK government resources relevant to
disaster recovery and business continuity, which will form a good starting
point for your later use of the UK government Business Continuity
Management (BCM) toolkit. Do this activity now.

3.1.3 Disasters, disruption and business continuity
A terrorist attack like that on the World Trade Center is a disaster which we
hope is a rare event. Hoferek and Wilson (2007) also discussed the
destruction of New Orleans by Hurricane Katrina in 2005 and that, too, is a
rare event. The same is true of the COVID-19 pandemic, with its massive
disruptions to lifestyles and global economies, as well as its impact on human
lives. It is valuable to consider these extreme events because they are
examples of worst case scenarios, but there are many more things that can
happen which we might not call a ‘disaster’ but which can seriously disrupt
an organisation. Organisations need to be able to recover from these less
dramatic events too, if they are to survive.

Here are a few examples of incidents that have been reported in the press.

129

Part 3 – How to recover from failure: Business Continuity Planning

.

It doesn’t need extremes like Hurricane Katrina for inclement weather to
cause disruption. Winter storms in the UK cause disruptions to power
supplies most years, and these are likely to worsen due to climate change
(Wright, 2023).

. Flooding has also caused massive, and growing, disruption to IT services
in many countries. Consider the ﬂoods in Leeds in 2016 which destroyed
Vodafone’s data centre, leading to signiﬁcant mobile outages
(Smolaks, 2016).

. The highly-connected nature of the global Internet means that single

points of failure are surprisingly common. In June 2021, the failure for an
hour of the content delivery network Fastly (which provides multiple
cached versions of widely-viewed resources) caused outages for many
websites, from Amazon to streaming service Hulu, and across multiple
news sources (Hern, 2021).

. Repeated crashes during 2019 in the IT system supporting UK courts

meant that court ﬁles could not be accessed, jurors enrolled or records of
defendants’ court appearances found. This led to judges and lawyers
unable to work, and many thousands of court cases being postponed or
cancelled (Bowcott, 2019).

. Deliberate damage to organisations is not necessarily due to terrorism. In
2013 vandals set ﬁre to power cables in Haywards Heath, resulting in
properties losing their electricity supply (The Argus, 2013).

. Accidental physical damage can have dramatic consequences. In 2008, a
ship’s anchor cut two undersea optical ﬁbre cables off the coast of Egypt
and disrupted internet access to large parts of the Middle East and India
(BBC News, 2008).

These were all big enough stories to get reported in the press, but you are
probably aware of events that have disrupted organisations that you know but
which never reach the news media. For example, a change to the software at
a local charitable adoption agency prevented staff having access to the case
notes of prospective and current adopters for about 24 hours. If that had gone
on any longer it would have had serious consequences for the agency,
potentially leading to harm to the welfare of children who were being
considered for adoption.

3.1.4 Summary
In this section you have read about some lessons learned from past events,
especially from the September 11 attacks on the World Trade Center.

In the next section you will be studying actions that organisations can take to
prepare for the possibility that they will be faced by potentially disruptive
events. What matters is that the organisation can continue doing whatever it
is supposed to be doing, and return to normality as soon as possible. The aim
is to maintain business continuity.

130

Part 3 – How to recover from failure: Business Continuity Planning

3.2 Business Continuity Planning
Section 3.1 introduced you to methods of preparing an organisation so that it
is able to recover should it suffer a disaster. Disaster recovery is one aspect
of ‘business continuity’, and there is plenty of advice on business continuity
available from a wide range of sources. In the UK, for example, an
organisation known as the Business Continuity Institute (www.thebci.org/)
publishes advice in a document known as the Good Practice Guidelines.

The UK government also publishes advice on business continuity, and this
section is based around the UK government’s Business Continuity
Management (BCM) Toolkit, which is a resource of the government’s
guidance on‘ Resilience in society’, which you have seen in Activity 3.5. A
copy of this is available on the module website within the Block 3 Part 3
Resources section.

In this section you will be working through the Toolkit, step by step. For
each step you will be asked to describe what you would do for that step if
you were responsible for BCM in a case study of The Open University
Library Services. At various points in this section, we will also be comparing
the Toolkit to the article by Oberg, Whitt and Mills (2011), which you read
earlier, and you may wish to download it at this point (again it is available
on the module website within the Block 3 Part 3 Resources section).

Note: For historical reasons, business continuity is sometimes used
synonymously with disaster recovery, but there is a lot more to ensuring
business continuity than recovering from disasters

131

Part 3 – How to recover from failure: Business Continuity Planning

3.2.1 Case study: The Open University Library

Box 3.1 contains a (simpliﬁed) description of the facilities and services of the
Open University Library.

Box 3.1: The Open University Library Services

The Open University Library provides library services to the staff
(including associate lecturers) and students of The Open University, to
the staff and students of other universities, and to members of the
general public.

The Library building on campus contains collections of books, journals
and audiovisual teaching materials on open shelves over three ﬂoors. It
also holds University archives, the OU Charter and Grant of Arms,
collections of student theses, and valuable historical books and research
archives such as the papers of Jennie Lee MP (Minister of the Arts in
the late 1960s and strongly responsible for the foundation of The Open
University) and Betty Boothroyd MP (the ﬁrst female Speaker of the
UK House of Commons and subsequently Chancellor of The Open
University), after whom the library building is named. The building
provides study areas with computer access, Wi-Fi and meeting rooms,
printing and photocopying facilities, and a small lounge with vending
machines for drinks and snacks.

The Library Services website provides online resources including access
to more than 100 000 academic journals, citation indexes, UK and
international newspapers and more than 500 000 academic books.
Access to many of these resources is controlled by the OpenAthens
authentication system, which is run by the UK charity Jisc as a service
to the education community.

132

Part 3 – How to recover from failure: Business Continuity Planning

The Library Services website also provides online training in digital and
online literacy, and advice and guidance on the access and use of
information sources.

The Library Services servers are located in the OU IT Services server
room where they are managed and backed up. As well as the website,
the servers hold the user database, the proxy servers that hold local
copies of commonly accessed third party resources, and the digital
archives of historical and teaching output. They also hold the email
handling system, known as VOICE, which is used by the Library
helpdesk when responding to student queries.

There are about 90 staff posts in the Library:

. Director of Library Services
. Associate Director, Information Management and Innovation (IMI)
32 IMI staff: managers, archivists, advisors, development ofﬁcers
and assistants

. Associate Director, Academic and Student Services (A&SS)

36 A&SS staff: managers, librarians, specialists and assistants
. Associate Director, Business, Performance and Management (BPM)
18 BPM staff: managers, web developers, communications ofﬁcer,
administrators and assistants.

The IMI team carries out a broad range of work from acquiring and
managing content, and undertaking innovation and service improvement
projects through to university-wide information management services.

The A&SS team provides support to module teams in the production
and presentation of modules; manages the University’s institutional
research repository, Open Research Online, and advises staff and
research students on appropriate resources for their research; offers a
series of literacy training sessions each year to students and staff, and
provides helpdesk services offering advice and support to students and
staff via phone, email and webchat messaging.

The BPM team provides a variety of infrastructure and support services
to Library staff and customers. It is composed of several specialised
teams: Administration, Business Development, Finance, Human
Resources, Marketing, Planning and Performance, Project Support and
Systems Development.

Activity 3.6 (self-assessment)

30 minutes
As a starting point for your analysis of the business continuity needs of the
OU Library, draw a systems map of The OU Library Services system,
focusing on the key services and products of the organisation. You can use
your own knowledge of the work of the Library, in addition to the

133

Part 3 – How to recover from failure: Business Continuity Planning

information in the box, to help you do this. However, do not worry too much
about the details as you will revise this map in a later activity.

Systems maps were introduced in Block 1 (in both Parts 1 and 2) and you
may wish to revise their use from that block. You will also ﬁnd them useful
later in your consideration of the BCM Toolkit.

3.2.2 Business Continuity Management Toolkit

Activity 3.7 (exploratory)

5 minutes
If you have not yet downloaded the BCM Toolkit, do this now. It can be
found via the Block 3 Part 3 Resources section of the module website (under
the heading ‘Section 3.2’).

Read pages 3 and 4 of the Toolkit, headed ‘What is Business Continuity
Management?’ and the introduction, ‘About the Toolkit’.

Why do you think that the government produced this document?

Comment
The Toolkit says ‘The Civil Contingencies Act 2004 recognised [BCM’s]
importance by requiring frontline responders to maintain internal BCM
arrangements and local authorities to promote BCM to commercial and
voluntary organisations.’ (p. 3)

National and local governments have responsibility for maintaining the
stability and success of the country including when there are disruptive
incidents. The government clearly believes that organisations will be better
placed to cope with disruption if they have followed the guidance of the
Toolkit.

The diagram on page 4 of the Toolkit is taken from BS 25999-1 and the six
labels on the diagram (the words inside the centre circle; the four labels in
the middle ring separated by arrows; and the words in the outer circle) are
the six parts of the step-by-step guide.

Notice the four-stage cycle in the middle ring. This can be related to what is
known as the ‘Plan−Do−Check−Act’ (PDCA) cycle, which will be discussed
further in section 3.3.

BCM programme management
There are three headings in the section on BCM programme management on
page 5 of the Toolkit: Assigning responsibilities; Establishing and
implementing BCM in the organisation; and Ongoing management.

134

Part 3 – How to recover from failure: Business Continuity Planning

Oberg, Whitt and Mills have the following to say about responsibilities for
generating and maintaining the plan:

Writing disaster plans can become a line of business by itself, but few
companies today have the luxury of allocating high value talent to a
dedicated disaster planning effort. More likely, a company will have a small
number of individuals responsible for the business continuity portfolio,
overseeing the company’s preparedness and response program. They, in
turn, will rely on the key leaders who own and operate the critical functions
performing risk analyses and initial business impact analyses, offering the
strategies that can be executed effectively to respond and recover. Senior
management will complete the BIAs [Business Impact Analyses], and
decide which strategy to execute. Senior management must determine who
will lead the response and recovery effort.

(Oberg, Whitt and Mills, 2011, p. 37)

Activity 3.8 (self-assessment)

10 minutes
Read page 5 of the Toolkit, headed ‘BCM programme management’.

Suggest which people in the OU Library might be assigned the roles
described in the Toolkit.

Understanding the organisation: Business Impact Analysis
In the Toolkit, ‘Understanding the organisation’ is broken down into two
activities: Business Impact Analysis and Risk Assessment. These will be
considered separately, starting with Business Impact Analysis (BIA).

Read about Business Impact Analysis in the Toolkit (pages 6, 7 and 8, up to
the subheading ‘Risk Assessment’).

Note: In this material you read about Recovery Time Objective (RTO)
and Maximum Tolerable Period of Disruption (MTPD). These are two
important concepts for this part of TM353.

Oberg, Whitt and Mills have the following to say about BIA:

A good Business Impact Analysis (BIA) must consider all functions your
business units perform, and grade them for criticality across several impact
categories. For example, see Table 1. The Business Impact Analysis (BIA)
becomes a key tool in gaining your management’s acknowledgment of the
business risks, and their concurrence and support in mitigation efforts. The
resulting criticality ranking will point out the functions that warrant the
most attention and are most deserving of mitigation efforts, especially when

135

Part 3 – How to recover from failure: Business Continuity Planning

funding is tight. It will also point out those functions that are in need of
disaster recovery plans and exercises to test those plans.

(Oberg, Whitt and Mills, 2011, pp. 36–37)

Table 3.1 Business Impact Analysis (Table 1 of Oberg, Whitt and Mills, 2011)

Criticality
level

Financial
impact of
disruption

Stakeholder
impact of
disruption

Customer
impact of
disruption

Legal,
regulatory
impact of
disruption

Dependency
impact of
disruption

Vulnerability
impact

Time
sensitivity

High

High

High

High

High

High

High

> $$$/day

Example:
High media
attention,
high brand
impact

Impacts
customer
voice/data
service

Signiﬁcant
regulatory or
contractual
impact

Numerous
critical
functions
affected

Single point of
failure.
Limited
recovery
capabilities

Sensitive to
interruptions.
Function
can’t afford
any down
time

Medium

Medium

Medium

Medium

Medium

Medium

Medium

> $$/day

Example:
Medium
media
attention,
medium
brand impact

Impacts
customer, for
other than
voice/data
service

Some
regulatory or
contractual
impact

Some
functions
affected

Recovery sites
available, but
not
immediately

Sensitive to
interruptions.
Function may
be able to
afford up to
48 hrs. of
down time

Low

Low

Low

Low

Low

Low

Low

< $/day

Example:
Insigniﬁcant
media
attention or
brand impact

Insigniﬁcant
customer
impact

Insigniﬁcant
regulatory or
contractual
impact

Minimal
impact to
other
functions

Auto-failover,
geographically
diverse,
redundant
capabilities

Less sensitive
to
interruptions.
Function can
afford more
than 48 hrs.
of down time

Ranking is
for
management
use to rate
functions and
focus
resources,
based on the
criticality of
the function.

Criticality is
determined
based on the
level of
impact in the
following
areas:
Financial,
Stakeholder,
Customer,
Regulatory,
and
Dependencies.

Tier 1
functions
typically
scored High
in at least one
of these
areas.

Criticality tier
levels for
recovery:

1 = Mission
critical

2 = Important

3 = Less
critical

136

Part 3 – How to recover from failure: Business Continuity Planning

In the following activity you will compare the discussion of BIA in the two
documents.

Activity 3.9 (self-assessment)

30 minutes
Compare the steps for a BIA identiﬁed by Oberg, Whitt and Mills with the
stages given in the description in the Toolkit. To do this, go through each of
the ﬁve steps of BIA in the Toolkit and, for each of them, describe in a few
words what that step is doing and say if there is something in the Oberg,
Whitt and Mills (2011) description that directly corresponds to the step. For
this activity you should focus on pages 36–7 of Oberg, Whitt and
Mills (2011).

Systems maps and inﬂuence diagrams are valuable tools to complete Step 1
in the Toolkit’s Business Impact Analysis section, for identifying the key
services and products of the organisation, and the impact on the organisation
if that service or product is unavailable. A systems map can be drawn to
show the key services and products, then turned into an inﬂuence diagram to
make it easier to see the consequences of any component being unavailable.
Inﬂuence diagrams were ﬁrst introduced in Block 1.

Activity 3.10 (self-assessment)

45 minutes

(a) Revisit the systems map that you drew in Activity 3.6 and check that you
think it includes all of the products and services needed for the BIA.
(b) Based either on your own (possibly redrawn) systems map from part (a)

of this activity, or the one provided in the answer to Activity 3.6, draw an
inﬂuence diagram for the Library in order to identify the impact on the
Library if any of the services or products are unavailable. ‘Inﬂuence’ in
this case means that if the inﬂuencing component fails, it will lead to the
failure of the inﬂuenced component. You can use the thickness of the
lines to indicate how soon and how complete the inﬂuence is. So, for
example, if the failure of a component leads to the immediate and
complete failure of another component the line will be very thick.

Note: You may have had to redraw your systems map of the Library for
Activity 3.10. It is an important point that the creation of a systems map
is not something you do once and then leave forever after. As well as
needing to revisit the map when things in the organisation change, you
will need different maps for different purposes. Also, as your
understanding of the organisation changes, you will come to realise that
the map needs revising, even if nothing else has changed. The drawing
of a map is part of the process of understanding an organisation.

137

Part 3 – How to recover from failure: Business Continuity Planning

Step 2, which involves identifying the Maximum Tolerable Period of
Disruption (MTPD) for each product or service, is a matter of judgement.
MTPD is deﬁned in Annex A of the Toolkit as:

Duration after which an organisation’s viability will be irrevocably
threatened if product and service delivery cannot be resumed.

(HM Government, no date, p. 17)

In the case of the OU Library, it would be difﬁcult to say that there is a
speciﬁc time beyond which the viability will be ‘irrevocably threatened’, but
clearly the longer the disruption goes on, the more the credibility of the
Library will be compromised.

Activity 3.11 (self-assessment)

30 minutes

(a) Go through the ﬁrst three steps of the BIA for the following two Library

services:

(i) website
(ii) helpdesk services.

(b) Based on your examination of the impact of the loss of these services,
use your judgement to assign each of them to an impact level of low,
medium or high.

A full BIA can be extremely time-consuming, complicated and expensive,
and as a result many companies don’t do it. However a full BIA, trying to
take into account all risks to all functions of the organisation, is a ‘counsel of
perfection’ and it is better to deﬁne a more restricted scope and do a BIA on
a small but key part of the organisation’s operation.

A procedure such as that outlined by Oberg, Whitt and Mills (2011, p. 37) in
their Table 1 (see Table 3.1 above) can be useful for systematically exploring
the potential impact of risks to the organisation, but it is important to avoid
the activity becoming a ‘tick-box’ exercise alone. The Business Continuity
Institute says of BIA:

The BIA is the foundation on which the BCM [Business Continuity
Management] programme is built. It identiﬁes, quantiﬁes and qualiﬁes the
impacts in time of a loss, interruption or disruption of business activities on
an organization and provides the data from which appropriate continuity
strategies can be determined. The BIA identiﬁes the urgency of each
business activity undertaken by the organization by assessing the impact
over time of an interruption to this activity on the delivery of products and
services.

(Business Continuity Institute, 2013, p. 20)

138

Part 3 – How to recover from failure: Business Continuity Planning

Understanding the organisation: risk assessment
Read about risk assessment in the Toolkit (the rest of page 8, and pages 9
and 10).

Oberg, Whitt and Mills say, in a section on risk analysis:

During the assessment of your facilities, consider all risks, internal and
external, to each facility itself, to the systems or services it houses, and to
the people who work there. The risks to each facility may come from any
of the disaster scenarios mentioned above, from the nature of the building
itself, the building systems, its location, its neighbors, from the equipment
it houses, or simply because humans occupy it. The risks to the systems or
services can arise from the facility itself, from physical security threats,
from logical security threats, from connectivity issues, hardware or software
issues, or simply because humans have access to it. Risks to the people can
arise from any disaster or threat scenario, from injury to fatality, including
loss of key personnel needed for business continuity and/or response and
recovery efforts. You need to be careful to avoid tunnel vision focusing on
the obvious risks and to take an all hazards approach.

(Oberg, Whitt and Mills, 2011, p. 36)

It would be impossible to identify all possible risks, but there are methods
that you can follow to reduce the chance that you miss something important.
This requires a systematic and a systemic approach to risk analysis.

One starting point is to consider different sources of risk. For example, it
would be important to consider remote cyber risks as well as local physical
risks. In the context of information security, Alberts and Dorofee (2003)
identify four categories of threats:

. Deliberate actions by people, which can come from two groups of people:
those inside an organisation and those outside it. The attacks on the World
Trade Center are an extreme example of deliberate action by people
outside the organisation. More common examples include a malcontented
employee shredding important documents or a hacker attacking a
password-protected ﬁle.

. Accidental actions by people, which again can come from the same two

.

groups: those inside and those outside an organisation. Examples might be
an employee accidentally deleting an important ﬁle or a family member
spilling coffee on the keyboard of a computer.
System problems, which include: hardware problems (for example, a
server crash making the ﬁles on a hard disk unrecoverable); software
problems (such as bugs, or the system clock being incorrect and causing a
backup program to function incorrectly); and malicious code (maybe a
virus or a Trojan horse).

. Other events include power cuts, telecommunications failures, ﬁre,

rodents, meteorites, earthquakes, volcanic eruptions, cosmic rays, and so
on. The damage due to Hurricane Katrina falls into this category.

139

Part 3 – How to recover from failure: Business Continuity Planning

Activity 3.12 (self-assessment)

10 minutes
Suggest how you would categorise each of the six examples of potential
disruptions presented at the beginning of section 3.1.3. Note that sometimes
disruption is due to a combination of events.

Oberg, Whitt and Mills go on to say:

There are four ways to manage risk. You can accept it, transfer it, eliminate
it, or mitigate it. Accepting risk means that you acknowledge the risk, and
decide it is sufﬁciently unlikely to occur or have a signiﬁcant impact, you
need do nothing about it. Transferring risk generally refers to getting
insurance to protect yourself against it occurring at all or with sufﬁcient
impact to hurt you. Eliminating risk means taking whatever steps are
necessary to prevent whatever threat from materializing; actually
eliminating risk is highly unlikely, and comes with signiﬁcant expense.
Mitigating risk is to acknowledge that it has some likelihood of occurring,
and decide there are acceptable measures to reduce the likelihood of it
occurring or reduce the impact to an acceptable level. This is when you
prepare and plan for potential disaster scenarios.

(Oberg, Whitt and Mills, 2011, p. 36)

Both Oberg, Whitt and Mills and the Toolkit talk about four ways of
managing risk, but they use different words for some of them. Oberg, Whitt
and Mills say: Accept it; Transfer it; Eliminate it; Mitigate it, and the Toolkit
says: Treat; Tolerate; Transfer; Terminate.

The Toolkit has clearly chosen four words that all begin with the letter ‘t’.
Other writers have used yet another different set of words. For example the
OU module M882 had: Retention; Transfer; Avoidance; Reduction; and the
international Standard ISO/IEC 27005:2011 has Modiﬁcation; Retention;
Avoidance; Sharing.

Activity 3.13 (exploratory)

10 minutes
The words used to label the ways of managing risk are not in themselves
important. What are important are the four different categories of actions that
can be taken. Group the different labels together for each of the four
categories. This will help you identify the nature of the different possible
responses by seeing the different words being used to describe the activities.

140

Part 3 – How to recover from failure: Business Continuity Planning

Comment
Treating; mitigating; modifying; treating; reducing risk

Tolerating; accepting; retaining the risk

Transferring; sharing risk

Terminating; eliminating; avoiding risk.

In the answer to Activity 3.13 we grouped terminating/eliminating/avoiding
risk, and this perhaps needs some more explanation. The only way of entirely
eliminating a risk, or of avoiding it completely, is to stop the activity that
incurs the risk in the ﬁrst place.

The Toolkit explains that BCM is about treating the risks, and this aligns
with what Oberg, Whitt and Mills say about mitigation:

Mitigation plans are where backup power plants and generators come from,
where diverse circuit routing and network resiliency comes from, where
geographic or component redundancy comes from, and where backup tapes
or servers come from. Mitigation planning gives rise to hot sites, off-site
archives, cross-training people, and exercising your response and recovery
capabilities. Mitigation leads to Recovery Time Objectives (RTOs),
Recovery Point Objectives (RPOs), Service Level Agreements (SLAs), and
disaster plans. Mitigation is the necessity for Cells On Wheels (COWs) and
Cells On Light Trucks (COLTs), Generator On A Truck (GOATs), and
Switches On Wheels (SOWs).

(Oberg, Whitt and Mills, 2011, p. 36)

You looked at Recovery Time Objectives in Activity 3.11. Recovery Point
Objective (RPO) is another parameter used in BCM, and you will be looking
at it in section 3.3.

Activity 3.14 (exploratory)

5 minutes
COWs (Cells On Wheels) appeared in the Attack on the Wires video that you
watched at the start of this Part. COWs are base stations for mobile cellular
networks that are ‘on wheels’ so that they can be moved into locations where
a temporary mobile cell is required at short notice. COLTs (Cells On Light
Trucks) are also types of COWs, and, depending on what you read, they may
be synonyms or there may be technical differences between COLTs and
COWs. A GOAT (Generator On A Truck) is an electricity generator that can
be moved into location at short notice to provide a temporary power supply,
and a SOW (Switch On Wheels) is similarly a telecommunication switch
(telephone exchange) for emergency/temporary use.

In what sense are COWs, COLTs, GOATs and SOWs used for mitigating
(treating) risk?

141

Part 3 – How to recover from failure: Business Continuity Planning

Comment
COWs, COLTs, GOATs and SOWs all contribute to getting communication
facilities back in place when some event has taken the normal facilities out of
action. They are all used, therefore, to compensate for the result of
disruption.

The diagram on page 9 of the Toolkit, the risk matrix, is a way of
identifying the seriousness of a risk. Some authors recommend using a bigger
grid, by having ‘low’, ‘medium’ and ‘high’ for each of the impact and
likelihood categories, as this allows for a more nuanced classiﬁcation of both
impact and likelihood, and that is what we’ve used in Figure 3.2.

You are not expected to use actual numbers on this plot, but the idea is that a
risk with a high likelihood (high probability of occurring) and which would
have a high impact if it were to occur, would be in the top right square.
Risks in this square are the ones that you have to worry about most. Risks
that are low impact and low likelihood can probably be ignored. In Figure 3.2
we have also used a colour coding scheme to identify the seriousness of a
risk.

High impact
Low likelihood

High impact
Medium likelihood

High impact
High likelihood

t
c
a
p
m

I

Medium impact
Low likelihood

Medium impact
Medium likelihood

Medium impact
High likelihood

Low impact
Low likelihood

Low impact
Medium likelihood

Low impact
High likelihood

Figure 3.2 Risk matrix (adapted from BCM Toolkit, page 9)

Likelihood

142

Part 3 – How to recover from failure: Business Continuity Planning

Activity 3.15 (self-assessment)

25 minutes
Identify at least two risks to each of the two OU Library services that you
looked at in Activity 3.11 (website and helpdesk services) and go through the
seven steps of the Toolkit’s risk assessment (pp. 8–9).

For Step 3 (‘List what arrangements you currently have in place to prevent or
reduce the likelihood of the risk occurring’), you can assume nothing is
currently in place (although, of course, that is not true in reality), unless you
already happen to know of anything.

When you plot the risks on a risk matrix for Step 6, you should use a 3 x 3
matrix the same as shown in Figure 3.2.

For the ﬁnal step, Step 7, you should suggest which of the options you would
use for each risk, and very brieﬂy suggest how you would implement the
options.

It is important to emphasise that business continuity planning is not an exact
science and also, as mentioned previously, it must not be treated as a tick-box
exercise. You may have come out with different conclusions in Activity 3.15,
but the importance of going through the steps of the Toolkit is to draw
attention to the areas of the business which need careful consideration.

Determining BCM strategy

Activity 3.16 (self-assessment)

20 minutes
Read ‘Determining BCM strategy’, on page 11 of the Toolkit.

For each of the categories in the box on page 11 of the Toolkit (People;
Premises; Technology; Information; Suppliers and Partners; Stakeholders),
identify at least one thing that the OU Library might do as part of its strategy
for treating (mitigating) the risks that you identiﬁed in Activity 3.15.

Developing and implementing BCM response
Read ‘Developing and implementing BCM response’, on pages 12 and 13 of
the Toolkit.

This section of the Toolkit is about drawing up plans. It emphasises the need
for the plan or plans to be appropriate for the organisation, and that it is
therefore impossible to be prescriptive about the structure and content.

143

Part 3 – How to recover from failure: Business Continuity Planning

It says that:

[Y]ou may choose to have separate incident management, business
continuity and recovery plans; or separate plans covering a particular part
of your organisation, premises or scenario. For a very small organisation a
single plan which incorporates all the above elements may be sufﬁcient.

(HM Government, no date, p. 12)

Oberg, Whitt and Mills also address this question of whether you should have
a single plan or multiple plans.

A large company will likely have many critical business functions. Do you
write a plan for each function and how to deal with each risk that it faces?
You could. You might look at all hazards, at all of your risks, and all of
your critical functions, deciding they all come down to a handful of
circumstances and corresponding recovery strategies. They might include
loss of a key facility housing critical functions, loss of the systems
supporting critical functions, loss of a third party that provides critical
functions, loss of key personnel, or an external disaster that doesn’t directly
affect you but does signiﬁcantly impact your community or customers.

(Oberg, Whitt and Mills, 2011, p. 37)

Our case study has been focusing on one part of the OU: the OU Library.
This doesn’t necessarily mean that the Library has its own plan, separate
from an overall University plan. The work you have been doing on the
Library could inform a University-wide plan or several University-wide
plans.

Alternatively, the OU Library could have its own plan, or more than one
plan.

Activity 3.17 (exploratory)

10 minutes
From what you have learned of the OU Library, and your existing knowledge
of The Open University, what do you think would be the best approach for
the OU? Should the OU Library have its own plan? Or more than one plan?

Comment
This is a matter of judgement and you would need to know more about the
OU and the OU Library to make the decision, but in practice (at the time of
writing) the OU Library does have its own business continuity plan.

Given the size of the OU, and the fact that the services of the Library are
clearly deﬁned and distinct from – though, of course, closely aligned with –
other services of the University, this does seem to make a lot of sense.

Whether the Library should have multiple plans is difﬁcult to say, and again
you would need to know more details of the functioning of the Library to
make that judgement. There might, for example, be a case for separating out

144

Part 3 – How to recover from failure: Business Continuity Planning

the plans for the Library’s online services to students from the campus-based
services of the Library building.

One point that Oberg, Whitt and Mills make concerning plan invocation is
particularly worth noting:

One important consideration, particularly if you are a technology company
and you have technicians that can repair systems and recover services, is
when to invoke your disaster response plan? At what point does a problem
grow in scope to become a disaster that would activate your response and
recovery plan?

(Oberg, Whitt and Mills, 2011, p. 38)

Exercising, maintaining and reviewing BCM arrangements
Read ‘Exercising, maintaining and reviewing BCM arrangements’, on pages
14 and 15 of the Toolkit.

Oberg, Whitt and Mills are clear about the importance of exercising a plan:

If you don’t plan to exercise your plan, don’t even write it!

(Oberg, Whitt and Mills, 2011, p. 38)

Fire drills are a familiar part of the life of many organisations because it is
known that having a plan on paper is one thing, but actually seeing what
happens in reality is something different. The same applies to adi saster
recovery plan. It is necessary to practise it.

The importance of emergency drills was also something that Bob Eisenhardt
commented on in the article that you looked at in section 3.1.1:

You should have your staff participate in evacuation drills, taught to use
stairs and not elevators, and to have on hand ‘go bags’ (small, easy-to-carry
container for basic supplies such as ﬂashlights, small medicals, maps, food
and money). IT personnel may consider placing periodic backup data in
their go bags if it ﬁts snugly.

(Eisenhardt, 2011)

Activity 3.18 (self-assessment)

15 minutes
The Toolkit suggests there are four main types of exercise possible: Testing,
discussion-based exercises, table-top exercises and live exercises. Brieﬂy
suggest which type can be used, and is the most appropriate, for each of the
risks that you discussed in Activities 3.14 and 3.15.

145

Part 3 – How to recover from failure: Business Continuity Planning

Embedding BCM in the organisation’s culture
Read ‘Embedding BCM in the organisation’s culture’, on page 16 of the
Toolkit.

All too often documents such as a business continuity plan can be produced,
ﬁled, and forgotten about. The organisation needs to ensure this does not
happen. Major events such as Hurricane Katrina and the September 11
terrorist attack remind organisations of the need to be prepared, but
organisations cannot rely on external events for a prompt. A review of
arrangements for business continuity should be built into the annual cycle of
all organisations, even if most years not much has changed and nothing new
needs to be done.

3.2.3 Summary
In this section you have followed through the steps of the Business
Continuity Toolkit that was developed by the UK government. We ﬁnish the
section, however, with another quotation from Oberg, Whitt and Mills, which
is the ﬁnal statement in the papers:

We’ll conclude with the three components that you must have to succeed in
a response and recovery situation:

. A well thought out and exercised recovery plan
. A well thought out and exercised communications plan

.

Strong, competent, adaptable incident command leadership

(Oberg, Whitt and Mills, 2011, p. 42)

In the next section you will be looking at an international standard that
provides guidance on good practice for ensuring that IT systems are designed
and planned so as to support an organisation’s business continuity plans.

3.3 ICT Readiness for Business Continuity
As you worked through the case study in the previous section you will have
seen that business continuity for the Library is reliant upon the continued
operation of the servers holding the Library databases. If the ICT used by the
Library is out of action, all the key services of the Library will be
unavailable. This will hardly have come as a surprise to you, and you will
appreciate that most organisations are today entirely reliant on their ICT.
Unfortunately, while it is particularly important for ICT to keep running, you
also saw when we explored the sources of disruption that ‘computer failure’
appeared as one of the most common events (section 3.1.3).

Organisations should therefore make certain that they have policies in place
to ensure that the services provided by the ICT systems are maintained in the
event of disruption. They need policies for ICT Readiness for Business
Continuity (IRBC).

In order to explore this topic, we will be looking at an international standard:

146

Part 3 – How to recover from failure: Business Continuity Planning

BS ISO/IEC 27031:2011 Information technology – Security techniques –
Guidelines for information and communication technology readiness for
business continuity. (For shorthand, we shall usually refer to BS ISO/IEC
27031:2011 simply as ISO 27031.)

We are using this document for two reasons: ﬁrstly, it provides
comprehensive guidelines for developing IRBC policies; secondly, it is
valuable for you to be introduced to a standards document, if you have not
met one before.

Activity 3.19 (self-assessment)

40 minutes
You will need to get a copy of the Standard for the next section. The Open
University Library has an activity that introduces British Standards, and
shows you how to locate and download copies from the BSI website.

You should go to the module website and do that activity (which can be
found in the Block 3 Part 3 Resources) and download BS ISO/IEC
27031:2011 now.

3.3.1 Standardisation bodies
Before looking any further at the content of the Standard, we would like to
say a little bit more about standardisation bodies. Standardisation is not a
subject of great interest to everyone, but the standards that it produces are
hugely important to the running of a whole range of areas of society, from
mobile networks to food safety.

The front cover of BS ISO/IEC 27031:2011 clearly declares the document to
be a ‘BSI Standards Publication’, but inside the front cover we can see that
this is ‘the UK implementation of ISO/IEC 27031:2011’.

There are, therefore, three different standardisation bodies involved with this
document: BSI, ISO and IEC.

147

Part 3 – How to recover from failure: Business Continuity Planning

. BSI (the British Standards Institution) has its origins in 1901 (as the
Engineering Standards Committee), changing its name to British
Standards Institution in 1931. BSI started with engineering standards for
example, (the sizes of structural steel segments) but now covers a wide
range of ﬁelds. As well as being the UK standards body and representing
the UK on international standards organisations (such as IEC and ISO),
the ‘BSI Group’ is also an international organisation having taken over
standards bodies in other countries such as the USA, Germany and
Australia.
IEC (the International Electrotechnical Commission) was founded in 1906
at a meeting in London. IEC is described on its website as concerned with
‘International Standards and Conformity Assessment for all electrical,
electronic and related technologies’.
ISO is not an acronym, but is the short name of the organisation and is
derived from the Greek isos, meaning equal. (The full name, in English, is
‘International Organization for Standardization’.) ISO ofﬁcially started in
1947 (also at a meeting in London): it is international, and covers a wide
range of ﬁelds. It says on its website:

.

.

ISO has published more than 19 500 International Standards covering
almost every industry, from technology, to food safety, to agriculture and
healthcare. ISO International Standards impact everyone, everywhere.

(ISO, no date)

From the Foreword to the Standard, it can be seen that IEC and ISO
collaborated by establishing a joint technical committee for the development
of standards in the ﬁeld of information technology, including this one. BSI,
as the UK’s national standardisation body, would have participated in the
development, alongside national standardisation bodies of other countries, and
then would have voted on approval of the Standard.

These are just a few of the many organisations in the world that create
standards. Although BSI is the ofﬁcial standardisation body in the UK, other
bodies in the UK create standards too. Standards are not regulations, and
organisations can choose which if any standards to abide by. In a sense there
is a ‘free market’ in standards, and which standards become the ones that are
widely followed depends upon many factors, including, very importantly, the
esteem of the body behind the standard. BSI, however, has a head start
because of its ofﬁcial status in the UK. ISO and IEC are similarly highly
respected internationally.

3.3.2 Plan–Do–Check–Act (PDCA) cycles
If you look carefully at Figure 1 in the introduction of BS 27031 you will
notice that the inner circle and the ﬁrst ring around it are (almost) the same
as the ﬁgure on page 4 of the Toolkit, which you studied in the previous
section. This is because the inner part of the ﬁgure is showing Business
Continuity Management (BCM), then around that are shown the processes for
ICT Readiness for Business Continuity (IRBC). Figure 1 shows the
relationship of these two processes.

148

Part 3 – How to recover from failure: Business Continuity Planning

Around the outside of the ﬁgure are the labels ‘Plan’, ‘Do’, ‘Check’ and
‘Act’. Before looking more closely at the Standard, it is worth spending some
time on the general idea of the Plan−Do−Check−Act cycles which are
widely used as a tool of business.

Box 3.2: PDCA cycles or PDSA cycles?

You will also sometimes see discussion of a ‘Plan−Do−Study−Act’
(PDSA) cycle. For some writers the PDCA and the PDSA are just
different names for the same thing, though other writers make a
distinction between the two (there is an interesting discussion of the
history of the two cycles in Moen and Norman, 2010). Both cycles are
also sometimes referred to as the ‘Deming Cycle’ or ‘Deming Wheel’
after the quality management guru W. Edwards Deming who was
instrumental in developing many of the ideas.

You should be aware of this background and know that in some contexts
the terms PDSA, PDCA, or ‘Deming cycle’ will be used with a speciﬁc
narrower deﬁnition, but for our purposes this distinction is not
important. PDCA is probably the most widely used term in the UK –
which may simply be because PDSA is better known as the name of a
charity that helps pets (The People’s Dispensary for Sick Animals)! In
TM353 we shall talk about PDCA cycles, and not worry if some people
might argue that we are really talking about a PDSA cycle.

Central to PDCA cycles is the simple idea that we learn by doing. In the
context of tackling a particular problem, the PDCA cycle relates to the idea
that the act of building a solution to a problem leads to a better
understanding of that problem, which can in turn lead to building a new and
better solution, and so on. This is illustrated in Figure 3.3.

149

Part 3 – How to recover from failure: Business Continuity Planning

Plan
understand the problem and develop
an initial, but fit-for-purpose, solution
that can be created relatively quickly

Act
the current solution and the
results of the Check stage
are used to define a revised
problem for initiating
the Plan stage of the
next iteration

Do
the results of the Plan stage
are implemented and used

Check
the resolution is observed in operation

Figure 3.3 The Plan−Do−Check−Act cycle

The purpose of the Plan stage is to understand the problem and develop an
initial, but ﬁt-for-purpose, solution that can be created relatively quickly.
Criteria against which the effectiveness of the initial and future solutions can
be gauged are also agreed. In the Do stage, the results of the Plan stage are
implemented and then used. In the ﬁrst iteration, this generally just means a
pilot study to test the initial solution, so limiting any damage from mistakes
in the Plan stage.

In the Check stage, the solution is observed in operation. The idea is to
answer questions such as:

. Does the solution work in the way it was expected to? How well does it

stand up against the evaluation criteria set up in the Plan stage?

. Has producing a solution changed our perception of the problem? Which
parts of the problem do we understand well, and which parts not so well?
. How could we change the solution to make it better? What changes would
reﬂect our new perception of the problem? Which parts of the solution
work well and which work poorly?

The answers to questions like these prepare for the Act stage, in which the
current solution and the results of the Check stage are used to deﬁne a
revised problem description for initiating the Plan stage of the next iteration.

PDCA cycles are claimed to bring a more scientiﬁc approach to tackling
complex problems (Moen and Norman, 2010). They can be useful in a wide
range of contexts, especially those problems:

150

Part 3 – How to recover from failure: Business Continuity Planning

.

.

.

that exist in a complex and changing environment
that need an initial solution relatively quickly
for which there exist resources for continual improvement.

Activity 3.20 (self-assessment)

15 minutes

(a) Describe one or more areas of your life in which you use or could use a

PDCA cycle.

(b) Identify problems in your own organisation for which a PDCA cycle

might be a useful strategy.

(c) Can you think of a problem in your experience which would not beneﬁt

from being tackled with a PDCA cycle?

Comment
In tackling this activity, you may wish to consider the three characteristics of
problems to which the PDCA cycle is suited – complex and changing
environment, quick initial solution, resources for continual improvement –
and assess whether they apply to any part of your work or home life. There
may already be daily situations in which you unknowingly apply the PDCA
cycle.

PDCA in BS 27031
Look again at Figure 1 on page vii of BS 27031. The diagram has a centre
circle labelled ‘Business Continuity Management System’ which is
surrounded by three concentric annuli. The ﬁrst annulus shows the steps of
Business Continuity Management, and this is what you were exploring in
section 3.2 of this part. The next annulus shows the steps of ICT Readiness
for Business Continuity, then the outer annulus has the Plan, Do, Check, Act
labels.

We found it confusing that the Plan–Do–Check–Act labels appear between
the four activities in the BCM and IRBC annuli. However, the Plan–Do–
Check–Act steps are also described in Table 1 on page vi of the Standard,
and comparing this with Figure 1, it appears that the labels are on the arrows
in the annuli, and correspond to achieving the process that the arrows point
to.

The diagram shows the interaction between the BCM activities and the IRBC
activities. For example, at the top of the ﬁgure ‘Understanding IRBC
requirements’ is shown interacting with ‘Understanding the organization’s BC
requirements’. In each case we see the IRBC activity interacts with the same
BC activity, so all this is saying is that the speciﬁc ICT aspects of business
continuity are developed alongside, and in conversation with, the
development of the overall business continuity planning of the organisation.

151

Part 3 – How to recover from failure: Business Continuity Planning

3.3.3 BS 27031 outline
As the Standard is quite a complex document, it is worth exploring its
structure a little. The main sections of the Standard are as follows:

Foreword
Introduction
1 Scope
2 Normative References
3 Terms and Deﬁnitions
4 Abbreviations
5 Overview
6 IRBC Planning
7 Implementation and Operation
8 Monitor and Review
9 IRBC Improvement
Annexes A, B, C and D
Bibliography.

The Foreword provides some background to the Standard and talks about the
standards bodies in general. The Introduction provides more speciﬁc
information about the development of this particular Standard.

Sections 1, 2, 3 and 4 are all in the nature of preamble to the main body of
the Standard. ‘Normative’ here (Section 2) means ‘prescriptive’, and
‘Normative References’ are references to documents that provide the ground
rules of the ﬁeld. The normative references deﬁne the context and
background needed to understand and use this Standard.

Section 5 is an overview of the processes of delivering ICT Readiness for
Business Continuity. Sections 6 to 9 are the core of the Standard and spell
out what an organisation needs to do in order to satisfy the requirement of
the Standard.

Sections 6 to 9 of the Standard are structured around a Plan–Do–Check–Act
cycle:

6 IRBC Planning = Plan
7 Implementation and Operation = Do
8 Monitor and Review = Check
9 IRBC Improvement = Act

The Standard then has four annexes which it describes as‘ informative’,
meaning that they are not part of the formal Standard in the sense that they
contain material that must be followed in order to be compliant with that
Standard, but they do contain useful material relevant to the Standard. We
shall be looking at Annex A in some detail in section 3.3.5.

Read Sections 1, 2, 3 and 4 of BS 27031.

152

Part 3 – How to recover from failure: Business Continuity Planning

You are not expected to memorise the content of these sections, but you
should read them so that you know what they contain.

3.3.4 Overview of IRBC: Section 5 of BS 27031
Section 5 is an overview of the Standard.

You should read the whole of this section so that you know roughly what it
covers, but don’t worry about understanding or remembering it all in detail.
The following activities will ask you to look more closely at some speciﬁc
subsections.

Activity 3.21 (self-assessment)

15 minutes
Read Section 5 of BS 27031.

Identify statements in this section which:

(a) concisely describe Business Continuity Management (BCM)
(b) state the relationship between BCM and IRBC. How is this relationship

represented in Figure 1?

(c) The paragraph at the end of Section 5.4 says:

Thus IRBC provides a meaningful way to determine the status of an
organization’s ICT services in supporting its business continuity
objectives by addressing the question ‘is our ICT capable of responding’
rather than ‘is our ICT secure?’ (p. 7)
Identify some of the itemised points made in Section 5.4 of the standard
that support this assertion.

The diagrams in Section 5 of BS 27031
It is said that ‘a picture is worth a thousand words’ so it is worth spending
some time looking at the diagrams in Section 5.

Figure 2 shows the relationship between BCM activities and ICT, which you
will recall was also the intention of Figure 1. The left-hand side of the
diagram, under the heading ‘BCM framework’ in the box at the top of the
diagram, should mostly be familiar to you from your study of section 3.2 of
this part. The middle part of the diagram, under the label ‘ICT output’
indicates the two desired outputs of IRBC: procedures for ICT response and
recovery, and ICT risk reduction controls. The overall outcome from the
process should be business resilience, as shown on the right-hand side of the
diagram.

Figures 3 and 4 both show the evolution of a disruptive event over time.
Figure 3 is a rough sketch designed to show the beneﬁts of having BCM in
place, while Figure 4 shows the key milestones on a disaster recovery
timeline.

153

Part 3 – How to recover from failure: Business Continuity Planning

Activity 3.22 (self-assessment)

20 minutes
It seemed to us that there is a disagreement between Figures 3 and 4, or,
rather, Figure 3 is more optimistic about what BSM can achieve than
Figure 4.

Draw a version of Figure 3 with the events in the timeline from Figure 4
indicated on the time axis. Explain your diagram and comment on any
signiﬁcant differences between it and Figure 3.

Although we highlighted a possible contradiction in the previous activity, in
practice there can be differences in different contexts for very good reasons.

The Minimum Business Continuity Objective (MBCO) is deﬁned in the
Standard as‘ the minimum level of services and/or products that is acceptable
to the organization to achieve its business objectives during a disruption’
(2011, Section 3.11, p. 3). But whether that is a level below which the
service must never drop, or whether it is the level that must be achieved
within a target time period depends on the organisation and the service.

For example, a hospital might state that certain critical areas must never lose
power even in a power cut. Therefore they would have to provide
uninterruptable power supplies (UPSs) and generators to ensure this, and the
MBCO is, in this case, the level of service below which the service must
never drop.

The OU Library, however, is unlikely to have any services that are as critical
as that. Instead, it would be acceptable to lose service entirely, so long as
some minimum service level (MBCO) is recovered quickly enough.

The important thing in business continuity planning is that the organisation
deﬁnes the terms it is using and ensures that they are understood and used
consistently.

Notice that in the case of the hospital using a UPS that we mentioned above,
recovery may start the instant that the disruption occurs. So, although
Figure 4 in the Standard shows a delay between the occurrence of the
incident detection, followed by response and then recovery to MBCO, this
can all happen effectively at once. Indeed, that is why it may be possible to
ensure the level never drops below MBCO.

Continuing the consideration of the diagrams in Section 5, Figure 5 shows
the stages of IRBC structured in the Plan–Do–Check–Act cycle. This is a
diagrammatic summary of the details in Sections 6, 7, 8 and 9 of the
Standard.

3.3.5 RPO, RTO and a disruption timeline
Another valuable diagram in the BS 27031 is Figure A.1 in Annex A, and
this is repeated in Figure 3.4 (overleaf).

154

Part 3 – How to recover from failure: Business Continuity Planning

You should be able to understand most of the content of this diagram from
your study so far, but the Recovery Point Objective (RPO) needs more
explanation. The BS 27031 Glossary deﬁnes RPO as the ‘point in time to
which data must be recovered after a disruption has occurred’ (BSI, 2011,
p. 3).

For example, one strategy that organisations have for backing up data is to
run a tape backup every night. This means that in the event of the server
crashing, there will be data that can be used for recovery that comes from the
previous day. If the crash occurs in the morning, the data will be less than
half a day out of date. If the crash occurs just before the backup is run, the
recovery data can be up to 24 hours out of date. This backup, a nightly tape
run, would therefore be satisfactory if the RPO was 24 hours.

For some data 24 hours would be too long. In an extreme case, losing any
data would be unacceptable so that the RPO is zero. This could be
accommodated by having a mirrored system, whereby all data on one
machine is immediately duplicated on another, an approach that is often taken
by large-scale cloud datacentres.

Read Annex A to ISO 27031 now.

155

Part 3 – How to recover from failure: Business Continuity Planning

Time
zero

Prevention and IRBC
implementation

Detection

Response

Recovery

DR

operation Restoration

Prevention
and IRBC
improvement

Business continuity (BC)
Recovery Time Objective (RTO)
(per product, service or activity)

Detection
time

Invocation
decision
time

Recovery
Point
Objective
(RPO)

ICT
Recovery
Time
Objective
(RTO)
(per ICT
service)

BC
User
Acceptance
Test

ICT DR
arrangement
supports
ongoing
BC
activities

ICT
supports
migration
back from
recovery
mode

Events
timeline

ICT
infra-
structure
recovery
complete

ICT
application
recovery
complete

Users
access
restored
ICT
services

Business
services
fully
recovered

Return to
(new)
normal
operations

Disruption
occurs

Service
loss
experienced

Decision
taken
to
invoke
ICT
recovery

Figure 3.4 IRBC and milestones during a disruption (Source: redrawn from
Figure A.1 of ISO 27031, p. 31)

One important consideration that is made clear in the Annex is the distinction
between the RTO for the business process (product, service or activity) as a
whole and the RTO for an individual component (in this case an ICT
component) needed to deliver the process:

From a business continuity perspective there is a Recovery Time Objective
(RTO) per product, service or activity and […] this RTO starts from the
point at which the disruption occurs and runs until the product, service or
activity is recovered, but there might be a number of ICT services required
to enable this and each of these ICT services could comprise a number of
ICT systems or applications. Each of these component ICT systems or
applications will have its own RTO as a subset of the end-to-end ICT
service RTO and this should be less than the business continuity RTO,
taking into account the detection and decision making time and the user
acceptance testing time (unless the business continuity product, service or
activity can be supported without ICT for a period, for example using
manual procedures).

(BSI, 2011, p. 30)

Last
good
data
backup

156

Part 3 – How to recover from failure: Business Continuity Planning

Recovery time is the time between the declaration of the disaster – i.e. the
time that work towards recovery starts – and the time that the system is
working again. ‘Working again’ might not mean fully operational, but with a
minimum level of service deemed to be acceptable (MBCO). The recovery
time objective is that target for the recovery time: the maximum time (or,
depending on how it is formally stated, it might be the average time) that
recovery should take.

The RTO of an ICT system will be less than that of the business process
(unless there is some manual workaround). Likewise, the RTOs for
subsystems of the ICT system will be less than that of the overall system.

Once a business process is disrupted, the time until there is a signiﬁcant
impact (its RTO) starts immediately.

The time deﬁned by the RTO of a supporting ICT system can only start once
recovery is initiated (e.g. if eight hours are required to load backup tapes then
this amount of time is required regardless of how long after the event
recovery is started).

3.3.6 Sections 6, 7, 8 and 9 of ISO 27031
There is no need to read Sections 6, 7, 8 and 9 of the Standard for the
purposes of TM353. However, the concepts and techniques that you have
studied in this Part should help you to understand the context and the purpose
of the material in these Sections if you were asked about it.

Activity 3.23 (self-assessment)

20 minutes
Section 7.2.3 of ISO 27031 contains the following:

ICT technology strategies should be implemented. These may
include one or more of the following implementations and
arrangements:

(a) hot standby, where ICT infrastructure is replicated across two sites;
(b) warm standby, where recovery takes place at a secondary site where

ICT infrastructure is partially prepared;

(c) cold standby, where infrastructure is built or conﬁgured from scratch

at an alternative location;

(d) ship-in arrangements, under which external service providers

provide hardware; and

(e) composite arrangement of the preceding strategies: a‘ pick-and-mix’

approach.

(BSI, 2011, p. 16)

157

Part 3 – How to recover from failure: Business Continuity Planning

Brieﬂy explain some of the considerations that would determine the merits of
these various implementations and arrangements with reference to MTPD,
RTO and RPO times.

3.3.7 Summary
In this section you have been introduced to an international standard for ICT
Readiness for Business Continuity. As well as introducing you to the
concepts of ICT readiness for Business Continuity, it developed further some
of the ideas covered in the previous sections, such as recovery time
objectives. This section also presented the PDCA cycle as a useful general
technique, and introduced you to international standards as a general
resource.

3.4 Summary
Disasters such as the attacks on the World Trade Center in New York, or
environmental disasters such as major ﬂooding, hit the headlines and are
reminders of the need for those responsible for IT systems to take account of
the possibility that things might go wrong. Less dramatic events than those
that make the news are much more common, however, and IT systems need
to be designed for business continuity in the event of disruption from any
conceivable source.

In this Part you have been introduced to the language and concepts of
business continuity planning, and have worked with the UK government’s
Business Continuity Management Toolkit and the international standard on
ICT Readiness for Business Continuity, among other resources. These
concepts and tools will help you to develop business continuity plans
systematically within the IT systems for which you are responsible.

Answers to activities
Please note that some activities do not have answers, if they are open-
ended, simply give instructions for reading or media use, or if a comment
is given in the text.

Activity 3.1
Eisenhardt mentions a number of things that made it possible to get the
business up and running quickly, including:

. The professional ethics of the staff. Some went to work quickly after the
attack and some needed some time to recover emotionally, but they all
returned eventually.

. The chance fact that, due to maintenance in the data centre, the backup

tapes had been taken off the site.

158

Part 3 – How to recover from failure: Business Continuity Planning

. The Lotus Notes email ﬁles were large and contained ‘a wealth of stored
easy-to-access data that provided its own ad-hoc backup protocol’ (
Eisenhardt, 2011).

Activity 3.2
The article talks of four main trends since September 11, 2001, all of which
could be relevant to disaster recovery:

.

Instant news and misinformation: news spreads much more quickly today
than in 2001, but the potential for misinformation and polarised views of
news stories is much greater.

. More robust but vulnerable networks: disaster preparedness strategies,

both by tech ﬁrms and other organisations, have become much stronger,
but the risk of new forms of terrorist attacks is also greater.

. Privacy versus national security: governments were granted much greater
ability to engage in mass surveillance following the September 11 attacks,
enhanced by smartphones and GPS, but the trade-offs are still the subject
of much debate.

. Digital inequity: there remain signiﬁcant groups of people shut out of the
digital economy due to a lack of communications connections, leading to
considerable inequality.

Activity 3.3
(a) ‘Ten years later: IT and life lessons from the South Tower’ by Bob
Eisenhardt was originally published in TechRepublic, which is an online
source of IT news (it has since disappeared from that site and the version on
the module website is from another source). On its ‘about us’ page, it says:

TechRepublic helps IT decision-makers identify technologies and strategies
to empower workers and streamline business processes. The site delivers a
unique blend of original content by IT professionals, peer-to-peer advice
from the largest community of IT leaders on the Web, and a vast library of
professional resources from the leading vendors in the IT industry.
TechRepublic features blogs, community forums, vendor white papers,
software downloads, Webcasts, and research.

(TechRepublic, no date)

‘How technology and the world have changed since 9/11’ by Darrell West
and Nicol Turner Lee was published in an online commentary from the
Brookings Institution, a non-partisan public policy think-tank in the US,
where both West and Turner Lee were employed at the time they wrote the
article.

‘Recovering from database recovery: case studies and the lessons they teach’
by Mary Hoferek and Susan Wilson was published in the proceedings of the
2007 IEEE Information Assurance and Security Workshop.

The ﬁrst article, therefore, was an industry publication, the second from a
think-tank (and described as a commentary rather than an analysis), whereas
the third was from a conference run by a professional institution (IEEE). This

159

Part 3 – How to recover from failure: Business Continuity Planning

difference is reﬂected in the writing styles. The ﬁrst two articles from the
industry publications are relatively informal, whereas the paper from the
conference proceedings followed the conventions of academic writing.

Another reason for the difference in style, however, is that Hoferek and
Wilson have more personal distance from the disaster than the other two.
Eisenhardt’s article is a survivor account, and West and Turner Lee explicitly
discuss their own experiences.

(b) The most important lesson that we thought came out of the papers was
the importance of people. This was in terms of the inherent value of human
life (particularly so for Bob Eisenhardt, who lost personal friends in the
attack), but also in terms of ‘human resources’ as assets of the organisation.

The two other lessons that we thought were particularly prominent were the
need for organisations to have a disaster recovery plan in place and the need
for geographic diversity of resources.

There are many more lessons that you might have identiﬁed. The main
conclusion of the paper by Hoferek and Wilson, for example, is that database
professionals have to think beyond database recovery as an isolated technical
issue to wider issues within the enterprise. They need to ‘explore their role in
the entire organisation’s disaster recovery mission’ (2007, p. 13).

Activity 3.4
A strength identiﬁed from the situation of Barclays Capital was that they had
a ‘triangulated network’ meaning that they had three different sites (New
York, New Jersey and London) and that they had multiple telecom providers.
This meant that when they lost one of the providers they could use another.

A problem identiﬁed from the experience of Barclays Capital was that ‘it was
hard to re-establish connections with business partners because they were also
in disaster recovery mode’ and ‘emergency contact phone numbers were hard
to ﬁnd’ (Hoferek and Wilson, 2007, p. 12). It is not said explicitly in the
paper, but the implication is that a communications plan for disaster
situations should include emergency contact numbers for business partners.

Activity 3.6
Our answer is shown in Figure 3.5. Your answer will probably be different
but could still be correct because there is invariably more than one way of
representing a system. For example, we have grouped together e-books,
electronic journals, citation indexes and the OpenAthens authentication
system as ‘Third party electronic resources’. They could instead have been
shown as separate components, and the Athens authentication system could
have been shown to be within Eduserv. If your map is signiﬁcantly different,
however, it would be worth spending a few minutes considering how
signiﬁcant the differences are, and whether you think there are merits in
drawing it one way or the other.

160

Part 3 – How to recover from failure: Business Continuity Planning

Third party
electronic resources

Citation
indexes

e-books

Electronic
journals

Athens
authentication
system

OU IT services

Staff

Servers

VOICE

Backup tapes

OU
Library services

Electronic
archives

Content
acquisition and
management

Helpdesk
services

Staff

Library building

Books and
journals on open
shelves

Study areas

Computer
terminals

Desks

Lounge

Valuable
print
archives

Staff
offices

Webchat

Phone

Email

Management,
administration,
HR

Access to
resources (journals,
databases,
ebooks)

Website

User
accounts

Advice and
guidance, online
tutorials

Library
users

OU staff

OU ALs

OU
students

Non-OU
users

OU estates

Figure 3.5 Systems map of The OU Library Services system

161

Part 3 – How to recover from failure: Business Continuity Planning

Activity 3.8
These are our thoughts.

We think that the Director of Library Services should be accountable for
BCM.

Each of the three areas (IMI, A&SS and BPM) should identify one or more
staff members in their areas to take the programme forward. The areas with
the most vulnerability might need to commit more staff to the tasks. This
would emerge as the plan is developed.

Activity 3.9
Step 1 is about identifying the key services and products of the organisation,
and the impact on the organisation if that service or product is unavailable.

Oberg, Whitt and Mills say ‘consider all functions your business units
perform, and grade them for criticality across several impact categories’
(2011, p. 36) which is in general terms the function of Step 1. The Toolkit
also says to identify what the impact of disruption would be of various time
durations, and Table 1 in Oberg, Whitt and Mills (2011, p. 37) includes
consideration of ‘time sensitivity’, which is addressing the same question
although not in quite the same way.

Step 2 is about identifying the Maximum Tolerable Period of Disruption,
which again is covered by the column in Table 1 of Oberg, Whitt and Mills.

Step 3 identiﬁes the Recovery Time Objectives (RTOs). Oberg, Whitt and
Mills have mentioned RTOs earlier in the paper but do not discuss what they
are, and do not address them under BIA.

Step 4 says ‘you should now document the critical activities’ (p. 6), which is
not explicit in Oberg, Whitt and Mills.

Step 5 requires you to quantify the resources needed. This is not addressed
explicitly in Oberg, Whitt and Mills.

162

Part 3 – How to recover from failure: Business Continuity Planning

Activity 3.10
(a) The author had several attempts at drawing the map during the

production of TM353, and drew their systems map fully aware of what it
was going to be used for, so the map in the answer to Activity 3.6
doesn’t need to be redrawn, but don’t be surprised if yours does.

(b) The author’s diagram is in Figure 3.6. They have used three types of line.
The thickest line is an immediate dependability. For example, if the
servers in the OU IT services system go down, the Library website will
immediately be unavailable. Thinner lines are more long-term, or in some
other way less immediately catastrophic dependability. So, for example, if
the Library management and administration systems were unavailable,
sooner or later all aspects of the Library would be disrupted, but it would
not be immediate. In a slightly different way, the helpdesk services use
the VOICE system for their email support, but there are other email
systems that they could use for alternative but less comprehensive
support. They also introduced a dashed line to show the dependability of
the website on helpdesk services. In this case the dependability could be
immediate because a student might be unable to use the website without
the help of the helpdesk, but this is likely only to be for a few individual
students who needed the helpdesk advice in order to use the website.

163

Part 3 – How to recover from failure: Business Continuity Planning

Third party
electronic resources

Citation
indexes

eBooks

Electronic
journals

Athens
authentication
system

OU IT services

Staff

Servers

VOICE

Backup tapes

OU
Library services

Electronic
archives

Content
acquisition and
management

Helpdesk
services

Staff

Library building

Books and
journals on open
shelves

Study areas

Computer
terminals

Desks

Lounge

Valuable
print archives

Webchat

Phone

Email

Management,
administration,
HR

Staff
offices

Access to
resources (journals,
databases,
ebooks)

Website

User
accounts

Advice and
guidance, online
tutorials

Library
users

OU staff

OU ALs

OU
students

Non-OU
users

OU estates

Figure 3.6 Inﬂuence diagram of the OU Library Services system

164

Part 3 – How to recover from failure: Business Continuity Planning

Activity 3.11
(a)

(i) Website

Step 1
24 hours. Students expect and need access to the Library website in
order to complete assignments (and may be looking for resources
from the Library immediately before their assignment is due). The
loss of service for even a few hours would be serious. Anything
above 24 hours would seriously threaten the organisation’s viability.
Step 2
We would suggest an MTPD of 24 hours.
Step 3
We would suggest the Library would want to set an RTO measured
in a few hours, maybe two hours.

(ii) Helpdesk services

Step 1
24 hours. For most students it would be a nuisance not being able to
access the helpdesk services for a day, but would not be serious.
However, if a student was unable to complete an assignment because
they have a problem with ﬁnding what they need and if they’d left
the completion of the assignment to the deadline day, then even a
few hours would be very serious.
24–48 hours. Again, for the speciﬁc case of a student unable to
complete an assignment because they have a problem with ﬁnding
what they need, a delay of up to two days would start to become
signiﬁcant.
Up to one week. There might now be signiﬁcant numbers of users
who are having problems that can’t be resolved.
Up to two weeks. Just more of the same, but module calendars
typically allow one or two weeks for the completion of an
assignment, so it would be reasonable for students to feel
considerably aggrieved by the lack of a helpdesk service.
Step 2
A library without any helpdesk facilities would be unacceptable long
term, but we suggest it would be tolerable up to, say one week.
Step 3
Although it would be tolerable up to one week, we would suggest
the Library would want to set a much shorter RTO, such as 24
hours, to take into account any unforeseen difﬁculties that may affect
achieving the MTPD.

165

Part 3 – How to recover from failure: Business Continuity Planning

(b) Both the website and the helpdesk services are important to the Library
so there may be a case for assigning both of them to ‘high’ for impact.
However, we would suggest that the loss of the website is more serious,
so we will assign ‘high’ to the website and ‘medium’ to the helpdesk
services. (We am doing that partly so that they are in different categories,
which makes the exercise more interesting. Naturally, that would never be
a reason to do it in a real situation!)

Activity 3.12
1 The damage due to winter storms in the UK is ‘other events’.
2 Flood damage at Vodafone’s data centre would also be considered ‘other

events’, although their wider impact meant that the network outages might
have been perceived as system problems.

3 The failure of the Fastly content delivery network, and subsequent website

outages, is an example of a system problem.

4 The computer failures at the UK courts is another example of a system

problem.

5 The vandalism to the power cables in Haywards Heath is an example of

deliberate action by people.

6 Cutting of the undersea optical ﬁbre cables off the coast of Egypt is

accidental action by people.

Activity 3.15

Step 1. The risks we thought about were as follows:
Website
◦ Loss of OU servers.
◦ Cyber attack on the OU’s websites.
◦ Loss of third-party resources.
Helpdesk
◦ Flu outbreak or other illness affecting signiﬁcant numbers of the

Library staff.

◦ Loss of network and failure of servers supplied (or supported) by

OU IT services.

◦ Something preventing use of the Library building, such as loss of

heating in winter.

Step 2. My judgement of the likelihood of each risk:
Website
◦ Loss of OU servers: low. (OU IT services have their own business
continuity plans that make the loss of servers very unlikely.)
◦ Cyber attack: medium (as the OU Library is not likely to be a

signiﬁcant target).

◦ Loss of third-party resources: high, for some of the resources. Most
of the professional Library services, such as electronic journals,
will be robust with the suppliers guaranteeing a high availability,
but there may be some resources that are less reliable.

166

Part 3 – How to recover from failure: Business Continuity Planning

Helpdesk
◦
Illness affecting signiﬁcant numbers of Library staff: medium.
◦ Loss of facilities supplied by OU IT services: low (given the IT

services business continuity plan).

◦ No access to the Library building: medium.
Step 3. What arrangements are currently in place?
Assume nothing currently in place.
Step 4. Procedures that could be put in place to prevent/reduce the risk:
Website
◦ Loss of OU servers. As noted above, the OU IT services already

ensure that the likelihood of losing the servers is low.

◦ Cyber attack. Procedures can be put in place to prevent a cyber
attack getting through, such as ﬁrewalls, antivirus software and
safe working practices.

◦ Loss of third-party resources. The Library is not in a position to

affect this.

Helpdesk
◦

Illness affecting signiﬁcant numbers of Library staff. It is difﬁcult
to think of anything the OU Library could do that would
signiﬁcantly reduce the risk of people getting ill. There are,
though, measures such as ensuring basic hygiene facilities are in
place (hot water and soap in the toilets – this is already there, of
course) to reduce the spread of infectious diseases, and policies to
encourage healthy living by staff members (supporting walk-to-
work week and cycle-to-work days for example).

◦ Loss of facilities supplied by OU IT services. This is dependent on
the OU IT services. Perhaps the Library can investigate further
with IT how services can be maintained.

◦ Access to the Library building. This is to some extent at least

dependent upon the OU Estates department. The Library should
work with Estates to establish how the building might be kept
serviceable in the event of problems such as the loss of heating, or
provide a method for off-site working for Helpdesk staff.

Step 5. Likelihood score for the risks:
Website
◦ Loss of OU servers: low.
◦ Cyber attack. Maybe the risk from cyber attack could be reduced
to low, but we think that might not be advisable, since cyber
attacks are getting increasingly sophisticated, so we would leave it
at medium.

◦ Loss of third-party resources. Remains at ‘high’.
Helpdesk
◦
◦ Loss of facilities supplied by OU IT services: low.
◦ No access to the Library building: medium.

Illness. The risk remains medium.

167

Part 3 – How to recover from failure: Business Continuity Planning

Step 6. Plot on the risk matrix:
From Activity 3.11 (b), the impact of the loss of the website is high and
the loss of the helpdesk is medium. So in summary we have:

Service

Risk

Impact

Likelihood

Website

Website

Website

Helpdesk

Helpdesk

Helpdesk

Loss of OU servers

Cyber attack

Loss of third-party resources

Illness

Loss of OU IT services

No access to the building

High

High

High

Medium

Medium

Medium

Low

Medium

High

Medium

Low

Medium

These are plotted in Figure 3.7

Website:
Loss of OU
servers

Website:
Cyber attack

Website:
Loss of 3rd party
resources

t
c
a
p
m

I

Helpdesk:
Loss of
OU services

Helpdesk:
Illness
or no access to
building

Likelihood

Figure 3.7 Risks to the OU Library plotted on a risk matrix for the answer to
Activity 3.15 (adapted from Figure 3.2)

168

Part 3 – How to recover from failure: Business Continuity Planning

Step 7. Actions:
Loss of OU servers: treat. Although the likelihood is low, the high impact
if the website were lost means that it is important to give some thought as
to what could be done if the OU servers were lost.
Cyber attack on the website: treat/transfer. Work with the OU IT services
to defend the website against attack, and ensure that a backup is available
to recover the website if it is brought down.
Loss of third-party resources from the website: treat/terminate/accept. We
grouped all the third-party resources together, but in reality different
resources have different likelihoods of loss and have different impacts, so
each of the resources need to be considered separately. We have included
‘terminate’ as one of the options, since if the resource is unreliable, then it
might be better not to offer it through the Library. An example of treating
is to ﬁnd alternative sources, as the Library does for some of the
important journals. The Library could keep a record of alternative sources
of third-party resources that could be called upon in the event of the
sources currently used becoming unavailable.
Illness affecting the helpdesk: treat. For example, ensure that staff
working in other areas are trained to take on helpdesk duties if the usual
staff are ill. In reality the OU Library is also part of an international
cooperative scheme whereby libraries share helpdesk support. As well as
providing backup for business continuity, this is how libraries can provide
24-hour cover. If you contact the OU helpdesk at 2am, you would
probably be put through to someone working a library in the USA.
Loss of OU IT services affecting the helpdesk: accept/treat. The risk of
this may be low enough to accept, but it may also be possible to treat it to
some extent by providing alternative ways to access the helpdesk.
No access to the building affecting the helpdesk: treat. Ensure that staff
can continue to provide helpdesk services from elsewhere, either at home
or elsewhere on the campus.

Activity 3.16
From the bullet points in the Toolkit (p. 11) we picked out a couple of
suggestions that seemed appropriate for the OU Library helpdesk.

. People

‘Cross-training of skills across a number of individuals’. To maintain the
helpdesk support in the event of illness affecting the staff who usually run
it, other OU Library staff could be trained to provide the support so that
they could be temporarily transferred from roles that have less immediate
impact on service delivery.
‘Use of third party support, backed by contractual agreements’. This is
what the Library is doing by the use of the cooperative that was
mentioned in the answer to Activity 3.15.

. Premises

Relocation and remote working to maintain helpdesk support were both
suggested to cope with the risk that the Library building is unavailable.

169

Part 3 – How to recover from failure: Business Continuity Planning

. Technology

.

.

.

‘Holding older equipment as emergency replacement or spares’. This may
be an option for the helpdesk in the event that the facilities via the OU IT
services fail.
‘Maintaining the same technology at different locations that will not be
affected by the same business disruption’. This may be an option for
keeping the website services available in the event of the OU IT services
failing.
Information
‘Ensure data is backed-up and it is kept off site’. This is especially
important for user accounts. In practice, this may be part of the service
provided by the OU IT services, rather than the direct responsibility of the
Library.
Suppliers and partners
‘Dual or multi-sourcing of materials’. As mentioned in the answer to
Activity 3.15, the OU Library has several different suppliers for some of
the online journals.
‘Signiﬁcant penalty clauses on supply contracts’. This may be used on the
contracts with the third-party suppliers of electronic resources.
Stakeholders
‘Mechanisms in place to provide information to stakeholders’. The OU
has means of communicating with students either via websites or email,
which could be used to provide alerts if there is a problem with the
Library.
‘Arrangements to ensure vulnerable groups are accommodated’. The OU
makes particular efforts to support students with disabilities, and these
need to be taken into account in planning backup facilities for the website
and the helpdesk.

Activity 3.18
Website:

. Loss of OU servers. We would suggest a discussion-based exercise would
be most suitable. Certainly it is difﬁcult to see how a live exercise could
be done without risking damage to the service itself.

. Cyber attack. Again, we would suggest a discussion-based or perhaps a

table-top exercise would be most suitable. If there are backup sites these
might be tested to a limited extent. A live exercise would risk too much
disruption to the library’s users.

. Loss of third-party resources. Possibly a hybrid of a table-top exercise and
a live exercise might be possible. We suggested in Activity 3.15 that the
Library might keep records of alternative sources of third-party resources.
As part of an exercise, access to these sources could be tested.

One problem that faces the Library is that there are OU students needing
their services 24 hours a day, 365 days a year. It is difﬁcult to ﬁnd a time
when a live exercise can be undertaken with no impact on students.

170

Part 3 – How to recover from failure: Business Continuity Planning

Helpdesk:

.

Illness affecting signiﬁcant numbers of Library staff. A live exercise is
relatively straightforward and, as the most comprehensive type of
exercise, is the most appropriate. The regular helpdesk staff could one day
be told to pretend to be ill and the business continuity plans activated.
The service could be monitored so that if there was evidence of
unacceptable service – if business continuity was not maintained – the
regular staff could be told to resume service and no harm would be done.

. Loss of facilities supplied by OU IT services. Possibly a partial live

exercise might be possible. The helpdesk staff might be instructed to try
delivering the service without using some of the facilities supplied by OU
IT services.

. No access to the Library building. A live exercise is possible for this as
well. Staff could be denied access to the Library building and told to
work elsewhere, in accordance with the guidance in the business
continuity plan.

Activity 3.20
(a) A colleague thought of the following two examples.

It would seem that we structure our work day using the PDCA cycle. The
day starts with an initial to-do list (Plan); working through the list (Do),
we complete tasks; we observe that the list grows and shrinks as new
tasks come in, and existing ones are ﬁnished (Check). We alter priorities
in the list (Act) to accommodate the day’s unfolding requirements. Each
day, therefore, consists of one or more iterations of the PDCA cycle.
Software development is an example of the PDCA cycle in action: an
alpha release is an initial solution to a problem, which will be internally
tried out, tested and changed to complete one PDCA cycle. Then a beta
version is released to the wider world and the second iteration begins.
Beta testers continue using the software, noting and feeding back
problems to the developers over many PDCA cycles. Later beta versions
become candidate ﬁnal releases, and then ﬁnal versions are sold to the
public. Nor is that the end of the matter, of course: as soon as a ﬁnal
release is in wide circulation, customers send in bug reports which drive
further iterations of the PDCA cycle.

(b) The Open University is shifting its focus to electronic delivery of

modules. This entails new ways of working, new constraints and new
opportunities. Thus the problem of electronic presentation of modules
would seem to ﬁt the characteristics of a type of problem to which the
PDCA cycle could usefully be applied.

(c) With some problems it is not possible to go around a circle. You have to
get them right ﬁrst time, because there may not be chance to ‘check’,
‘act’ and go around the loop again. Arranging an expensive holiday, for
example, needs all the work to go into the planning, since it is too late to
change it once you are doing it. (Although ‘checking’ one holiday can
inform the next.)

171

Part 3 – How to recover from failure: Business Continuity Planning

Activity 3.21
(a) From the ﬁrst paragraph of the section (p. 3):

‘Business Continuity Management (BCM) is a holistic management
process that identiﬁes potential impacts threatening an organisation’s
continuity of business activities and provides a framework for building
resilience and capability for an effective response that safeguards the
interests of the organization from disruptions.’

(b) The second paragraph below Figure 2:

‘An organization therefore sets out its BCM priorities and it is these
which drive the IRBC activities. In turn BCM depends upon IRBC to
ensure that the organization can meet its overall continuity objectives at
all times, and particularly during times of disruption.’ (p. 4)
Figure 1 showed cycles between activities in BCM and activities in
IRBC, illustrating the way in which BCM sets the priorities which drive
IRBC, and IRBC in turn supports BCM.

(c) Many of the beneﬁts are expressed in terms of the response when

disruption happens, rather than keeping ICT secure against disruption. For
example, (d) explicitly refers to the response:
‘develops and enhances competence in its ICT staff by demonstrating
credible responses through exercising ICT continuity plans and testing
IRBC arrangements.’ (p. 7)
And (e) and (j) talk about delivery keeping going even if there is
disruption:
‘provides assurance to top management that it can depend upon
predetermined levels of ICT services and receive adequate support and
communications in the event of a disruption.’ (p. 7)
‘potentially gains competitive advantage through the demonstrated ability
to deliver business continuity and maintain product and service delivery
in times of disruption.’ (p. 7)

Activity 3.22
Our plot of the events on a timeline is shown in Figure 3.8.

The key difference that we were alluding to in the question was that Figure 3
in Section 5 of BS 27031 suggests that BCM can ensure that the operational
status never drops below MBCO (Minimum Business Continuity Objective),
whereas Figure 4 indicates a time point when there is ‘recovered (minimum)
operation at alternate site’ (p. 6). This suggests that Figure 4 is assuming that
the operation does fall below the MBCO before that recovery point is
reached. This (operational status falling below MBCO) is what we have
shown in the diagram.

172

Part 3 – How to recover from failure: Business Continuity Planning

Operational
status

100%

MBCO

Incident
occurs

Detect
incident

Start
recovery

Recovered
(minimum)

Incident
resolved

Return to
normal
business

Figure 3.8 Timeline

The moment the incident occurs we have shown the operational status
starting to fall. The precise shape of the fall-off is impossible to know – it
might drop instantly to zero or some other level, or it might drop more
gradually, as we have shown it. The moment that the incident is detected has
no impact on the operational status, because nothing can happen until
recovery is initiated. At the moment recovery starts, however, the operational
status turns around and starts to rise (again, we don’t know the shape of
turnaround but we have shown a gradual turn and rise). The operational
status reached MBCO at the time labelled ‘Recovered (minimum)’ and
reaches 100% when the time point labelled ‘Return to normal business’ is
reached.

Activity 3.23
The different strategies would meet different Recovery Time Objectives
(RTOs) and Recovery Point Objectives (RPO) at different costs, so the choice
will be based upon the Maximum Tolerable Period of Disruption (MTPD).

The details depend upon the speciﬁc implementation, but in broad terms
options (a) to (d) are progressively worse in terms of the MTPD they can
satisfy, but would be progressively cheaper to maintain.

173

Part 3 – How to recover from failure: Business Continuity Planning

(a) Hot standby, where ICT infrastructure is replicated across two sites. The
standby can take over as soon as the disruption is detected, and the ICT
should be fully up to date (assuming the replication includes all of the
data). This option will therefore meet the most stringent criteria for RPO
and RTO (the recovery time can be virtually zero and the recovery point
will be the moment the disruption started). This is the most expensive
option but the one that performs best.

(b) Warm standby, where recovery takes place at a secondary site where ICT
infrastructure is partially prepared. There will be a delay in the secondary
site taking over, so this will not meet as tight a RTO target as option (a).
Depending on how the secondary site accesses the state of the primary
site, it may also not meet as stringent RPO as option (a)

(c) Cold standby, where infrastructure is built or conﬁgured from scratch at
an alternative location. As with (b), but the times will be even longer
than for (b), so the RTO that it can satisfy will be inferior.

(d) Ship-in arrangements, under which external service providers provide

hardware. This option would be longer than (b) and (c), and so the RTO
will be even worse.

(e) Composite arrangement of the preceding strategies: a ‘pick-and-mix’

approach.

It might be possible to get the performance of (a) at lower cost, by, for
example, providing hot standby for the most critical functions only. If the
whole ICT infrastructure is replicated, this effectively sets the Minimum
Business Continuity Objective (MBCO) as ‘full functionality’. If the MBCO
is less than full functionality, then the hot standby can be just sufﬁcient to
meet MBCO, and the functionality can be increased later.

174

Part 3 – How to recover from failure: Business Continuity Planning

References
Alberts, C. and Dorofee, A. (2003) Managing information security risks: the
OCTAVE approach. Boston, MA: Addison-Wesley.

BBC News (2008) ‘Severed cables disrupt internet’, 31 January. Available at:
http://news.bbc.co.uk/1/hi/technology/7218008.stm (Accessed: 5 March 2024).

Bowcott, O. (2019) ‘Law courts in chaos as IT meltdown disrupts thousands
of cases’, Guardian, 23 January. Available at: https://www.theguardian.com/
law/2019/jan/23/law-courts-in-chaos-as-it-meltdown-disrupts-thousands-of-
cases (Accessed: 5 March 2024).

BSI (2011) BS ISO/IEC 27031:2011: information technology – Security
techniques – Guidelines for information and communication technology
readiness for business continuity . London: British Standards Institution.
Available at: https://bsol-bsigroup-com.libezproxy.open.ac.uk/Bibliographic/
BibliographicInfoData/000000000030168355 (Accessed: 5 March 2024).

Business Continuity Institute (2013) Good practice guidelines 2013 global
edition edited highlights. A guide to global good practice in business
continuity. Available at: https://www.thebci.org/static/uploaded/5c0205f3-a9ff-
4f81-9695c3813b674a3b.pdf (Accessed: 5 March 2024).

Eisenhardt, R. (2011) ‘Ten years later: IT and life lessons from the South
Tower’, CBS News, 8 September. Available at: https://www.cbsnews.com/
news/it-and-life-lessons-from-the-south-tower/ (Accessed: 5 March 2024).

Hern, A. (2021) ‘Fastly says single customer triggered bug behind mass
internet outage’, The Guardian, 9 June. Available at: https://www.theguardian.
com/technology/2021/jun/09/fastly-says-single-customer-triggered-bug-that-
caused-mass-outage (Accessed: 10 June 2024).

HM Government (no date) How prepared are you? Business continuity
management toolkit. Available at: https://assets.publishing.service.gov.uk/
media/5a7b283de5274a34770e9d01/Business_Continuity_Managment_Toolkit.
pdf (Accessed: 5 March 2024).

Hoferek, M. and Wilson, S. (2007) ‘Recovering from database recovery: case
studies and the lessons they teach’, Information assurance and security
workshop, West Point, New York (United States), 20–22 June. Washington
DC: IEEE SMC, pp. 9–13.

Moen, R.D. and Norman, C.L. (2010) Circling back: clearing up myths about
the Deming cycle and seeing how it keeps evolving. Available at: http://
apiweb.org/circling-back.pdf (Accessed: 5 March 2024).

Oberg, J., Whitt, A. and Mills, R. (2011) ‘Disasters will happen – are you
ready?’, IEEE Communications Magazine, 49(1), pp. 36–42. Available at:
https://doi.org/10.1109/MCOM.2011.5681012

Smolaks, M. (2016) ‘Vodafone UK data center suffers outage due to ﬂoods’,
Data Center Dynamics, 5 January. Available at: https://www.
datacenterdynamics.com/en/news/vodafone-uk-data-center-suffers-outage-due-
to-ﬂoods/ (Accessed: 5 March 2024).

175

Part 3 – How to recover from failure: Business Continuity Planning

Srinivasan, S. (2002) ‘Indian software ﬁrms eye opportunities in electronic
security’, Associated Press International, 8 February. Available at: https://
advance-lexis-com.libezproxy.open.ac.uk/api/document?
collection=news&id=urn:contentItem:453N-KYC0-00BT-M0C6-00000-
00&context=1519360 (Accessed: 20 November 2023).

The Argus (2013) ‘Power lost to thousands of Sussex homes after vandals
damage electricity cables’, 11 October. Available at: https://www.theargus.co.
uk/news/10733410.power-lost-to-thousands-of-sussex-homes-after-vandals-
damage-electricity-cables/ (Accessed: 5 March 2024).

West, D.M. and Turner Lee, N. (2021) ‘How technology and the world have
changed since 9/11’, Brookings Institution, 27 August. Available at: https://
www.brookings.edu/articles/how-technology-and-the-world-have-changed-
since-9-11/ (Accessed: 5 March 2024).

Wright, M. (2023) ‘How extreme weather threatens to bring down UK’s
power lines and halt supply to homes’, The Conversation, 21 April. Available
at: https://theconversation.com/how-extreme-weather-threatens-to-bring-down-
uks-power-lines-and-halt-supply-to-homes-203193 (Accessed: 5 March 2024).

176

Acknowledgements

Grateful acknowledgement is made to the following sources:

Text
Box 1.1: Leonard, J. (2023) ‘Case study: ‘Trailblazing’ speedier public sector
cloud migration’, Computing, 20 July 2023. The Channel Co.

Table 1: Cook, S., Harrison, R., Lehman, M. and Wernick, P. (2006)
‘Evolution in software systems: foundations of the SPE classiﬁcation
scheme’, Journal of Software Maintenance and Evolution: research and
practice, 18(1). Wiley.

Box 1.3: Allen, T. (2023), ‘Cloud currency: Travelex leaves legacy behind’,
Computing, 9 March 2023. The Channel Co.

Box 2.2: Phaal, R., Farrukh, C. J. P. and Probert, D. R. (2004) ‘Technology
roadmapping – a planning framework for evolution and revolution’,
Technological Forecasting and Social Change 71(1–2), pp. 5–26, Elsevier.

Box 2.7: Evans, A. and Steven, D. (2020) ‘Our COVID Future: The Long
Crisis Scenarios’, Local Trust from the Long Crisis Network. https://
longcrisis.org/wp-content/uploads/2020/05/Long-Crisis-COVID-Scenarios-
21May20-2.pdf. This ﬁle is licensed under the Creative Commons Attribution
Licence http://creativecommons.org/licenses/by/4.0/

Box 2.9 extracts: Burden, K. and Kearney, M. (2016) ‘Future Scenarios for
Mobile Science Learning, Research’, Science Education, 46(2). Springer
Nature B.V.

Box 2.10: Adams, M.J., Finch, M. and Gamble, B. (2023) ‘More than a
Game: Scenario Planning, Imagination and the Public Librarys Future’,
Public Library Quarterly, 42(6). Taylor and Francis.

Activity 2.3: © Shell International Limited.

Figures
Figure 1.2: adapted from Ransom, J., Sommerville, I. and Warren, I. (1998)
‘A method for assessing legacy systems for evolution’, Proceedings of the
2nd Euromicro Conference on Software Maintenance and Reengineering.
Florence, 8–11 March. IEEE.

Figure 2.1: Phaal, R., Farrukh, C.J.P. and Probert, D.R. (2004) ‘Technology
road mapping a planning framework for evolution and revolution’,
Technological Forecasting and Social Change, 71(12). Elsevier Science.

Figure 2.2: Jeremy Kemp https://commons.wikimedia.org/w/index.php?
curid=10547051/https://commons.wikimedia.org/wiki/File:
Gartner_Hype_Cycle.svg#/media/File:Gartner_Hype_Cycle.svg. This ﬁle is

Acknowledgements

177

Part 3 – How to recover from failure: Business Continuity Planning

licensed under the Creative Commons Attribution-Share Alike Licence http://
creativecommons.org/licenses/by-sa/3.0/

Figure 2.3: Evans, A. and Steven, D. (2020) ‘Our COVID Future: The Long
Crisis Scenarios’, Local Trust from the Long Crisis Network. https://
longcrisis.org/wp-content/uploads/2020/05/Long-Crisis-COVID-Scenarios-
21May20-2.pdf. This ﬁle is licensed under the Creative Commons Attribution
Licence http://creativecommons.org/licenses/by/4.0/

Figure 2.4: Burden, K. and Kearney, M. (2016) ‘Future Scenarios for Mobile
Science Learning, Research’, Science Education, 46(2). Springer Nature B.V.

Figure 2.5: Adams, M.J., Finch, M. and Gamble, B. (2023) ‘More than a
Game: Scenario Planning, Imagination and the Public Librarys Future’,
Public Library Quarterly, 42(6). Taylor and Francis.

Figure 3.1: Oberg, J., Whitt, A. and Mills, R. (2011) ‘Disasters will happen
are you ready?’, Communications Magazine, 49(1). IEEE.

Figure 3.4: BSI (2011) BS ISO/IEC 27031:2011: Information technology
Security techniques Guidelines for information and communication
technology readiness for business continuity BSI. http://www.iso.org/iso/
catalogue_detail?csnumber=44374

Elements of Block 3 were provided by Alison Walton, external critical reader.

Portions of this block draw upon text used in previous OU modules,
especially T853 Information Systems Legacy & Evolution (Parts 1 and 2) and
M886 Information Security Management (Part 3).

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

178

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

Acknowledgements

179

Part 3 – How to recover from failure: Business Continuity Planning

Chris Winter, media project manager

Emma Johnson, digital development editor

Jonathan Martyn, digital development editor

Ryann Overbay, production editor

Vicky Eves, senior graphics media developer

180


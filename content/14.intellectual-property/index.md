---
title: "Intellectual Property"
description: "The term intellectual property (IP) refers to any sort of creative work, be it literature, art, or software."
---

The term intellectual property (IP) refers to any sort of creative work, be it literature, art, or software. In the realm of open source software, artifacts like source code, documentation, and images are considered intellectual property. Unless otherwise stated, intellectual property is the property of its creator, who may grant permission for others to use that intellectual property by providing a license.

The ease with which software can be copied and combined makes it challenging to know with confidence if content can be used without running into legal issues. Any sort of serious software development effort must be accompanied by a well-defined IP due diligence process that can identify issues and mitigate the risk of leveraging the work of others. IP due diligence is a time consuming process that requires specialised skills and a keen eye for detail.

> **Warning:** The Eclipse Foundation’s IP Team **does not (and cannot) give legal advice**. Rather, the team leverages their experience, along with various resources, to identify licenses in content, and make judgement calls as to whether or not licenses be being used in a consistent and compatible manner.

There are different kinds of content (e.g., source code, documentation, and images) to consider. For the purposes of the Eclipse Foundation’s IP Due Diligence Process, we consider all types of content, not just code, to be intellectual property that is subject to the process (even when we say *code* — especially in the context of IP due diligence — you should assume that we mean *content*).

[Project content](/intellectual-property/project-content/) is content (typically source code) that is produced and maintained by the open source project committers and contributors. Most of the *project content* produced by committers can be pushed into a project repository without any sort of legal review. However, at least in some cases, the IP Team needs to be engaged to review project content that comes from contributors (who are not committers); and there are some cases where even the work of committers needs to be reviewed.

[Third party content](/intellectual-property/third-party-content/) generally takes the form of libraries (e.g., modules, or components), source files, images, or other forms of IP that are produced and maintained outside of the scope of the open source project. To mitigate the risk associated with adopting open source in products, the *project content* and the *third party content* that it leverages need to be vetted to ensure that the copyrights expressed are correct, licensing is valid and compatible, and that other issues have been uncovered and properly investigated.

> **Warning:** If you’ve been around for a while, you may be looking for things that no longer exist. We’ve retired IPZilla along with the term *Contribution Questionnaire*, we’re now able to leverage a wider variety of open source licenses, and we lean much more heavily on automation than ever before. There’s more information about these changes in the [History](/intellectual-property/changes-in-the-ip-policy/) section of this chapter.

The IP Due Diligence Process focuses on source content. For the purposes of the IP Due Diligence Process, the term *source code* (or *source content*) refers to the pre-compiled content, including programming language source, configuration and property files, as well as binary things that don’t have a pre-compiled form like images or icons. The IP Due Diligence Process is concerned with reviewing the IP that is either consumed (third party content) or produced (project content) by the Eclipse open source project. The process doesn’t generally focus on compiled content (e.g., the IP Team looks at source code, not JAR files).

The IP Due Diligence Process does not dictate how source code repositories are structured. Project teams should organise content in their source code repositories in whatever structure makes the most sense. Similarly, the IP Due Diligence Process is not concerned with how third party content is represented (e.g., how it is integrated into builds) or how it is disseminated.

> **Note:** The [Eclipse Foundation Development Process](/development-process/) does restrict how content can be disseminated based on the state of the IP review. A Project team can create and distribute milestone builds of their content before it is fully vetted by the IP Due Diligence Process, but all content must be fully vetted before the project can engage in a formal [release](/releases-and-reviews/).

The means for committers to engage in the IP Due Diligence Process is by [creating a review request issue](/intellectual-property/requesting-a-review/).

::page-list{columns="2"}
::

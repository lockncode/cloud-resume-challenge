import React from "react";
import 'css/pages/resume.css'

import resumeData from 'data/resumeData'
import ResumeHeader from 'comps/resume/ResumeHeader'
import ResumeSection from 'comps/resume/ResumeSection'

export default function ResumePage() {
  

  return (
    <>
      <h1 className='fancy'>Resume</h1>
      <ResumeHeader person={resumeData.person}></ResumeHeader>
      <ResumeSection title='Profile' handle='profile' section={resumeData.sections.profile} />
      <ResumeSection title='Experience' handle='experience' section={resumeData.sections.experience} />
      <ResumeSection title='Education & Certifications' handle='education' section={resumeData.sections.education} />
    </>
  );
}
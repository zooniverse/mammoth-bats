React = require 'react'
counterpart = require 'counterpart'
Translate = require 'react-translate-component'
Markdown = require '../components/markdown'

counterpart.registerTranslations 'en',
  homePage:
    promoSections:
      one:
        image:
          src: 'http://placehold.it/291x291/c5c5c5'
          alt: ''
        content: '''
          ## See the bats. Track the bats.

          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.

          [Learn more about bat behaviors](#)
        '''
      two:
        image:
          src: 'http://placehold.it/291x291/c5c5c5'
          alt: ''
        content: '''
          ## Header 2
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.

          [Why are bats so scary?](#)
        '''
      three:
        image:
          src: 'http://placehold.it/291x291/c5c5c5'
          alt: ''
        content: '''
          ## Header 3

          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.

          [Learn more about citizen science](#)
        '''
    callToAction:
      header: '''Ready to get involved?'''
      button: '''Get Started'''

module.exports = React.createClass
  displayName: "Home"

  render: ->
    pitchSections = counterpart 'homePage.promoSections'
    <div className="home-page">
      <section className="home-hero">
        <div className="home-content-container"><h1>Mammoth Bats</h1></div>
      </section>
      {for key, section of pitchSections
        <section key={key} className="home-promo">
          <div className="home-content-container">
            <img src={section.image.src} alt={section.image.alt} />
            <Markdown>{section.content}</Markdown>
          </div>
        </section>}
      <section className="home-call-to-action">
        <Translate component="h2" content="homePage.callToAction.header" />
        <button className="home-call-to-action-button" type="button">{counterpart "homePage.callToAction.button"}</button>
      </section>
    </div>

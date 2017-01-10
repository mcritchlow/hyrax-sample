class BookPresenter < Hyrax::WorkShowPresenter
  # delegate :restrictions, to: :solr_document
  def restrictions
    if solr_document.restrictions.first == 'nothing'
      "There are no restrictions on this object"
    else
      solr_document.restrictions
    end
  end
end

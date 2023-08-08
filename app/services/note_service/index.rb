# rubocop:disable Style/ClassAndModuleChildren
class NoteService::Index
  attr_accessor :params, :records, :query

  def initialize(params, _current_user = nil)
    @params = params

    @records = Note
  end

  def execute
    content_start_with

    user_id_equal

    order

    paginate
  end

  def content_start_with
    return if params.dig(:notes, :content).blank?

    @records = Note.where('content like ?', "%#{params.dig(:notes, :content)}")
  end

  def user_id_equal
    return if params.dig(:notes, :user_id).blank?

    @records = if records.is_a?(Class)
                 Note.where(value.query)
               else
                 records.or(Note.where('user_id = ?', params.dig(:notes, :user_id)))
               end
  end

  def order
    return if records.blank?

    @records = records.order('notes.created_at desc')
  end

  def paginate
    @records = Note.none if records.blank? || records.is_a?(Class)
    @records = records.page(params.dig(:pagination_page) || 1).per(params.dig(:pagination_limit) || 20)
  end
end
# rubocop:enable Style/ClassAndModuleChildren
